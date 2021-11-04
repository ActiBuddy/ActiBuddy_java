package com.actibuddy.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

@WebServlet("/member/emailcheck")
public class MemberEmailCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		response.setContentType("text/html;charset=UTF-8");
		
		String email = request.getParameter("email");
		
		MemberDTO requestEmail = new MemberDTO();
		requestEmail.setEmail(email);
		
		MemberService memberService = new MemberService();
		
		int result = memberService.emailcheck(requestEmail);
		
		System.out.println(result);

		// 중복확인만 result 1 0 
		
		PrintWriter out = response.getWriter();
		
	
		out.print(result);
		out.flush();
		out.close();
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
