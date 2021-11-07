package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateCommentDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/review/select")
public class MateReviewSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		System.out.println("게시글 번호 : " + num);
		
		
		MateReviewService reviewService = new MateReviewService();
		MateReviewDTO review = reviewService.selectReviewInfo(num);
		
		int result = reviewService.updateReviewViews(num);
		
		String path = "";
		if(review != null) {
			path = "/WEB-INF/views/mate/mateReviewView.jsp";
			request.setAttribute("reivew", review);
			request.setAttribute("num", review.getNum());
			request.setAttribute("title", review.getTitle());
			request.setAttribute("userId", review.getUserId());
			request.setAttribute("date", review.getDate());
			request.setAttribute("img1", review.getImg1());
			request.setAttribute("img2", review.getImg2());
			request.setAttribute("img3", review.getImg3());
			request.setAttribute("views", response);
			request.setAttribute("content", review.getContent());
			request.setAttribute("rep", review.getRepYn());
			request.setAttribute("recommend", review.getRecommend());
			request.setAttribute("views", review.getViews());
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "메이트 리뷰 상세페이지 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
