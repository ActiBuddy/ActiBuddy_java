package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/triplist")
public class MypagetripListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		MypageService mypageService = new MypageService();
		CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(map);
		
		System.out.println("결과 : " + tripList);
		
		
		
		if(tripList != null) {
			request.setAttribute("tripList", tripList);
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/tripList.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		String cartNum = request.getParameter("cartNum");
		System.out.println("카트 번호 : " + cartNum);
		

		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		MypageService mypageService = new MypageService();
		CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(map);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/tripList.jsp");
		request.setAttribute("tripList", tripList);
		rd.forward(request, response);
	}

}
