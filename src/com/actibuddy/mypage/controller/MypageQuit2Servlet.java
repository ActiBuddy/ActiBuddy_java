package com.actibuddy.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/quit2")
public class MypageQuit2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/memQuit2.jsp");
			rd.forward(request, response);
		}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		
		MemberDTO requestUpdate = new MemberDTO();
		requestUpdate.setUserId(userId);
		
		int result = new MypageService().updateQuit(requestUpdate);
		
		System.out.println("update 성공? : " + result);
		
		
		
		
	}

}
