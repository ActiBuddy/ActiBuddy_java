package com.actibuddy.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

/**
 * Servlet implementation class MemberRegistServlet
 */
@WebServlet("/member/regist")
public class MemberRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/signup/signup1.jsp");
		rd.forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String userName = request.getParameter("userName");
		/*사용자가 '-'기호를 이용하여 전화번호를 입력하는 경우 통일시키기 위해서 replace 이용함 */
		String memPhone = request.getParameter("memPhone").replace("-", "");
		String email = request.getParameter("email");
		String birth =  request.getParameter("birth");
		String gender = request.getParameter("gender");
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setUserId(userId);
		requestMember.setPwd(pwd);
		requestMember.setUserName(userName);
		requestMember.setMemPhone(memPhone);
		requestMember.setEmail(email);
		requestMember.setBirth(birth);
		requestMember.setGender(gender);
		requestMember.setQuitYn("N");
		requestMember.setMemType("U");
		
		int result = new MemberService().registMember(requestMember);

		System.out.println("memberController result : " + result);
		
		response.sendRedirect("../member/login");

	}

}
