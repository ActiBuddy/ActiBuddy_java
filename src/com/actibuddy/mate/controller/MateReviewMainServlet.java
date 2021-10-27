package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/review")
public class MateReviewMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		List<MateReviewDTO> reviewList = new MateReviewService().selectAllReviewList();
		
		System.out.println(reviewList);
		
		String path = "";
		if(reviewList != null) {
			path = "WEB-INF/views/mate/mateReview.jsp";
			request.setAttribute("reviewList", reviewList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "리뷰 조회 실패!");
		}
		
	}
}
