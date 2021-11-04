package com.actibuddy.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

/**
 * Servlet implementation class MemberFindIdServlet
 */
@WebServlet("/member/findpwd")
public class MemberFindPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login/findid.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		String email = request.getParameter("email");
		String userId = request.getParameter("userId");
		
		MemberDTO member = new MemberDTO();
		
		member.setEmail(email);
		member.setUserId(userId);
		
		MemberService memberService = new MemberService();
		
		MemberDTO memberfindpwd = memberService.findpwd(member);
		
		request.setAttribute("memberfindpwd", memberfindpwd);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login/resultfind.jsp");
		rd.forward(request, response);
		
	}

}
