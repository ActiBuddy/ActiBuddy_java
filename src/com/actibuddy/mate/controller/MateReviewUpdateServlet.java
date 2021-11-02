package com.actibuddy.mate.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/review/update")
public class MateReviewUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		
		MateReviewService reviewService = new MateReviewService();
		MateReviewDTO review = reviewService.selectReviewInfo(num);
		
		String path = "";
		if(review != null) {
			path = "/WEB-INF/views/mate/mateReviewRevise.jsp";
			request.setAttribute("reivew", review);
			request.setAttribute("num", review.getNum());
			request.setAttribute("title", review.getTitle());
			request.setAttribute("userId", review.getUserId());
			request.setAttribute("date", review.getDate());
			request.setAttribute("img1", review.getImg1());
			request.setAttribute("img2", review.getImg2());
			request.setAttribute("img3", review.getImg3());
			request.setAttribute("content", review.getContent());
			request.setAttribute("rep", review.getRepYn());
			request.setAttribute("recommend", review.getRecommend());
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "메이트 리뷰 수정페이지 조회 실패!");
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
