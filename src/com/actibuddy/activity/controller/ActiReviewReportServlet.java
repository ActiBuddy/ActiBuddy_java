package com.actibuddy.activity.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/review/report")
public class ActiReviewReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		String reviewNum = request.getParameter("num");
		char repYn = request.getParameter("recYn").charAt(0);
		String updateRepYn = "Y";
		
		System.out.println("신고할 후기 게시글 번호 : " + reviewNum);
		System.out.println("신고할 후기 게시글 신고 여부 : " + repYn);
		System.out.println("신고 여부 업데이트 : " + updateRepYn);
		
		ActiReviewDTO review = new ActiReviewDTO();
		review.setNum(reviewNum);
		review.setRecYn(updateRepYn);
		
		ActivityService activityService = new ActivityService();
		int result = activityService.updateRepYn(review);
		
        response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		out.close();
		
		
		
	}

}
