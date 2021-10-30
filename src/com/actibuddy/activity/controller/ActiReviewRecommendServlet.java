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

@WebServlet("/review/recommend")
public class ActiReviewRecommendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	    String reviewNum = request.getParameter("num");
	    int reviewRec = Integer.parseInt(request.getParameter("recommend"));
	    int reviewUpdate = reviewRec + 1;
	    
	    System.out.println("후기 게시글 번호 : " + reviewNum);
	    System.out.println("후기 게시글 추천 수 : " + reviewRec);
	    System.out.println("게시글 추천 수 업데이트 : " + reviewUpdate);
	    
	    ActiReviewDTO review = new ActiReviewDTO();
	    review.setNum(reviewNum);
	    review.setRecommend(reviewUpdate);
	    
	    ActivityService activityService = new ActivityService();
	    int result = activityService.updateReviewRec(review);
	    
        response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		out.close();
	    
	}

}
