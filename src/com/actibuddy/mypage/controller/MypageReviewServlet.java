package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.model.dto.ActivityAndReviewDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/review")
public class MypageReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 메이팅 후기 가져오기
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		MypageService mypageService = new MypageService();
		List<MateReviewDTO> selectMtReview = mypageService.selectMtReview(userId);
		
		System.out.println("메이트 리뷰리스트 : " + selectMtReview);
		
		request.setAttribute("selectMtReview", selectMtReview);
		
		// 액티비티 후기 가져오기
		
		List<ActivityAndReviewDTO> selectActiReview = mypageService.selectActiReview(userId);
		
		System.out.println("액티리뷰 리스트 : " + selectActiReview);
		
		request.setAttribute("selectActireview", selectActiReview);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/review.jsp");
		rd.forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
