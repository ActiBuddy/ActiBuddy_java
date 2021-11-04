package com.actibuddy.common.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

@WebServlet("/member/authentication")
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


        String userId = request.getParameter("userId");
        String email = request.getParameter("email");
        
        
        System.out.println(userId);
        System.out.println(email);
       
        
        
        
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		// id 가 맞으면db에 생성한 임시번호를
		String authenticationKey = temp.toString();
		System.out.println(authenticationKey);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String value = passwordEncoder.encode(authenticationKey);

		MemberDTO member = new MemberDTO();

		member.setPwd(value);
		member.setUserId(userId);
		
		MemberService memberService = new MemberService();
		
		int result = memberService.changepwd(member);
		
		if(result > 0) {
			
			SMTPAuthenticatior sendEmail = new SMTPAuthenticatior();
			
			sendEmail.sendAllowEmail(email, authenticationKey);
			
			response.sendRedirect("../member/login");
			
		} else {
			
			System.out.println("실패");
		}
    }
	
	}

	
