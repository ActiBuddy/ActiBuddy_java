package com.actibuddy.common.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/email/authentication")
public class EmailAuthenticationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public EmailAuthenticationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		//mail server 설정
//        String host = "smtp.naver.com";
//        String user = "lgh2194@naver.com"; //자신의 네이버 계정
//        String password = "wlghks94!!";//자신의 네이버 패스워드
//        
//        
//        //SMTP 서버 정보를 설정한다.
//        Properties props = new Properties();
//        props.put("mail.smtp.host", host);
//        props.put("mail.smtp.port", 465);
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.ssl.enable", "true");
//        
//        StringBuffer temp =new StringBuffer();
//        Random rnd = new Random();
//        for(int i=0;i<10;i++)
//        {
//            int rIndex = rnd.nextInt(3);
//            switch (rIndex) {
//            case 0:
//                // a-z
//                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
//                break;
//            case 1:
//                // A-Z
//                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
//                break;
//            case 2:
//                // 0-9
//                temp.append((rnd.nextInt(10)));
//                break;
//            }
//        }
//        String AuthenticationKey = temp.toString();
//        System.out.println(AuthenticationKey);
//        
//        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(user,password);
//            }
//        });
//        
//      //email 전송
//        try {
//            MimeMessage msg = new MimeMessage(session);
//            msg.setFrom(new InternetAddress(user));
//            msg.addRecipient(Message.RecipientType.TO, new InternetAddress("lgh2194@naver.com"));
//            
//            //메일 제목
//            msg.setSubject("안녕하세요 액티버디 인증 메일입니다.");
//            //메일 내용
//            msg.setText("인증 번호는 :"+temp);
//            
//            Transport.send(msg);
//            System.out.println("이메일 전송");
//            
//        }catch (Exception e) {
//            e.printStackTrace();// TODO: handle exception
//        }
        
        
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		 

        response.setContentType("text/html;charset=UTF-8");

        response.setCharacterEncoding("UTF-8");

 

        String m_name =     request.getParameter("name");

        String m_email =    request.getParameter("email");

        String m_title =    request.getParameter("title");

        String m_text =     request.getParameter("text");

 

        try {

            String mail_from =  m_name + "<" + m_email + ">";

            String mail_to =    "admin<admin@83rpm.com>";

            String title =      "hosting.83rpm.com 요청사항 :: " + m_title;

            String contents =   "보낸 사람 :: " + m_name + "&lt;" + m_email + "&gt;<br><br>" + m_title + "<br><br>" + m_text;

 

            mail_from = new String(mail_from.getBytes("UTF-8"), "UTF-8");

            mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");

 

            Properties props = new Properties();

            props.put("mail.transport.protocol", "smtp");

            props.put("mail.smtp.host", "smtp.gmail.com");

            props.put("mail.smtp.port", "465");

            props.put("mail.smtp.starttls.enable", "true");

            props.put("mail.smtp.socketFactory.port", "465");

            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

            props.put("mail.smtp.socketFactory.fallback", "false");

            props.put("mail.smtp.auth", "true");

 

            Authenticator auth = new SMTPAuthenticator();

 

            Session sess = Session.getDefaultInstance(props, auth);

 

            MimeMessage msg = new MimeMessage(sess);

 

            msg.setFrom(new InternetAddress(mail_from));

            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));

            msg.setSubject(title, "UTF-8");

            msg.setContent(contents, "text/html; charset=UTF-8");

            msg.setHeader("Content-type", "text/html; charset=UTF-8");

 

            Transport.send(msg);

 

            response.sendRedirect("request_complete.jsp");

        } catch (Exception e) {

            response.sendRedirect("request_failed.jsp");

        } finally {

 

        }

    }
	
	}

	
