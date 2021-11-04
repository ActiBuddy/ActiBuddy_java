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
@WebServlet("/member/findid")
public class MemberFindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login/findid.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String email = request.getParameter("email");
		
		MemberDTO member = new MemberDTO();
		
		member.setEmail(email);
		
		MemberService memberService = new MemberService();
		
		MemberDTO memberfindid = memberService.findid(member);
		
		request.setAttribute("memberfindid", memberfindid);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login/resultfind.jsp");
		rd.forward(request, response);
	
	}

}
