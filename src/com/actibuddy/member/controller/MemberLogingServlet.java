package com.actibuddy.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.actibuddy.manager.model.dto.ManagerPartDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

@WebServlet("/member/loging")
public class MemberLogingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/signup/signup2.jsp");
		rd.forward(request, response);
		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		
		System.out.println("memberId : " + memberId);
		System.out.println("memberPwd : " + memberPwd);
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setUserId(memberId);
		requestMember.setPwd(memberPwd);
		
		ManagerPartDTO managerlogin = new ManagerPartDTO();
		managerlogin.setUserId(memberId);
		
		MemberService memberService = new MemberService();
		
		MemberDTO loginMember = memberService.loginCheck(requestMember);
		ManagerPartDTO loginManager = memberService.managerlogin(managerlogin);
		
		System.out.println(loginMember);
		

		/*    ================================================================================  */

		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			session.setAttribute("loginManager", loginManager);
			
			response.sendRedirect(request.getContextPath());

		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		}
		
	}

}
