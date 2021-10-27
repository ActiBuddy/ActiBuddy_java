package com.actibuddy.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

@WebServlet("/member/login")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login/login.jsp");
		rd.forward(request, response);
		
		HttpServletRequest hrequest = (HttpServletRequest) request;
		
		String uri = hrequest.getRequestURI();
		System.out.println("uri : " + uri);
		
		String intent = uri.substring(uri.lastIndexOf("/"));
		System.out.println("intent : " + intent);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
//		String memberId = request.getParameter("memberId");
//		String memberPwd = request.getParameter("memberPwd");
//		
//		System.out.println("memberId : " + memberId);
//		System.out.println("memberPwd : " + memberPwd);
//		
//		MemberDTO requestMember = new MemberDTO();
//		requestMember.setUserId(memberId);
//		requestMember.setPwd(memberPwd);
//		
//		MemberService memberService = new MemberService();
//		
//		MemberDTO loginMember = memberService.loginCheck(requestMember);
//		System.out.println(loginMember);
//		
//		String page = "";
//		
//		if(loginMember != null) {
//			HttpSession session = request.getSession();
//			session.setAttribute("loginMember", loginMember);
//			page = "/WEB-INF/views/main/mainpage.jsp";
//			
//			response.sendRedirect(request.getContextPath());
//		} else {
//			request.setAttribute("message", "로그인 실패!");
//			System.out.println("dmd dkseho~");
//			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
//		}
//		
//		request.getRequestDispatcher("/WEB-INF/views/main/mainpage.jsp").forward(request, response);
		
	}

}
