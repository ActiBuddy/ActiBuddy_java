package com.actibuddy.mate.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/review/report")
public class MateReviewReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String reviewNum = request.getParameter("num");
//		char repYn = request.getParameter("rep").charAt(0);
		String updateRepYn = "L";
		
		System.out.println("신고할 후기 게시글 번호 : " + reviewNum);
		System.out.println("신고 업데이트값 : " + updateRepYn);
		
		MateReviewDTO review = new MateReviewDTO();
		review.setNum(reviewNum);
		review.setRepYn(updateRepYn);
		
		MateReviewService reviewService = new MateReviewService();
		int result = reviewService.updateRepYn(review);
		
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		out.close();
	}

}
