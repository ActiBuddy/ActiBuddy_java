package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.service.MateReviewService;
import com.actibuddy.member.model.dto.MemberDTO;

@WebServlet("/mate/main")
public class MateMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MateReviewService reviewService = new MateReviewService();
		List<MemberDTO> newReviewList = reviewService.selectNewReview();
		System.out.println("리스트 확인 : " + newReviewList);
		
		String path = "";
		if(newReviewList != null) {
			path = "/WEB-INF/views/mate/mateMain.jsp";
			request.setAttribute("bestReviewList", newReviewList);
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "메이트 리뷰 페이지 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
