package com.actibuddy.mate.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;
import com.actibuddy.member.model.dto.MemberDTO;

@WebServlet("/mate/review/recommend")
public class MateReviewRecommendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reviewNum = request.getParameter("num");
		int reviewRec = Integer.parseInt(request.getParameter("recommend"));
		int reviewUpdate = reviewRec + 1;
		
		MateReviewDTO review = new MateReviewDTO();
		review.setNum(reviewNum);
		review.setRecommend(reviewUpdate);
		
		MateReviewService reviewService = new MateReviewService();
		int result = reviewService.updateReviewRec(review);
		
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		out.close();
		
		System.out.println();
		
	}

}
