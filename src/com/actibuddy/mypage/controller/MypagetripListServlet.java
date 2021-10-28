package com.actibuddy.mypage.controller;

import java.io.IOException;

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
		
		MypageService mypageService = new MypageService();
		CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(userId);
		
		System.out.println("결과 : " + tripList);

		
		
		if(tripList != null) {
			request.setAttribute("tripList", tripList);
			
		}
		
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/tripList.jsp");
		rd.forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String useYn = request.getParameter("useYn");
//		System.out.println("값  : " + useYn);
//		
//		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
//		System.out.println("userId " + userId);
//		
//		Map<String,String> resultMap = new HashMap<>();
//		resultMap.put("useYn", useYn);
//		resultMap.put("userID", userId);
//		
//		MypageService mypageService = new MypageService();
////		int result = mypageService.changeUseYn(resultMap);
		
		
	}

}
