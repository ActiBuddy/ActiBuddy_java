package com.actibuddy.mate.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/review/regist")
public class MateReviewRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mate/mateReviewWriting.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String title = request.getParameter("title");
		String img1 = request.getParameter("img1");
		String img2 = request.getParameter("img2");
		String img3 = request.getParameter("img3");
		String con = request.getParameter("con");
		String userId = request.getParameter("userId");
		
		System.out.println(title);
		System.out.println(userId);
		System.out.println(con);
		System.out.println(img1);
		System.out.println(img2);
		
		MateReviewDTO requestReview = new MateReviewDTO();
		
		requestReview.setNum(0);
		requestReview.setTitle(title);
		//requestReview.setImg1(img1);
		//requestReview.setImg2(img2);
		//requestReview.setImg3(img3);
		requestReview.setContent(con);
		//requestReview.setDate(null);
		requestReview.setRepYn("N");
		requestReview.setUserId(userId);
		
		System.out.println(requestReview);
		
		int result = new MateReviewService().registReview(requestReview);
		// result 결과에 따라서 페이지이동
		// 고려사항
		// 1. 현재 페이지에 있는데이터를 다른 페이지(서블릿)으로 넘겨줄꺼냐 
		// 2. 현재 페이지의 내용을 다 버리고 새로운 페이지를 요청할꺼
		String page = "";
		
		if(result > 0) {
			
			page = "/acti//mate/review";
			response.sendRedirect(page);
			
		} else {
			
			page = "/WEB-INF/views/common/failed.jsp";
			
			request.setAttribute("message", "등록실패!");
			
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}	
		
	}

}
