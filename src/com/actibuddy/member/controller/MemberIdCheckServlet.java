package com.actibuddy.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

/**
 * Servlet implementation class MemberIdCheckServlet
 */
@WebServlet("/member/idcheck")
public class MemberIdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		 
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		response.setContentType("text/html;charset=UTF-8");
		String userId = request.getParameter("userId");
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setUserId(userId);
		
		
		System.out.println(userId);
		System.out.println(requestMember);

		MemberService memberService = new MemberService();
		
		MemberDTO loginMember = memberService.idcheck(requestMember);
		
		System.out.println(loginMember);

		
		if(loginMember != null) {
			
			System.out.println("됐어~");
			
//			HttpSession session = request.getSession();
//			session.setAttribute("loginMember", loginMember);
//			
//			response.sendRedirect(request.getContextPath());

		} else {
			
			System.out.println("안됐~");

//			request.setAttribute("message", "로그인 실패!");
//			System.out.println("dmd dkseho~");
//			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		}
		
	}

}
