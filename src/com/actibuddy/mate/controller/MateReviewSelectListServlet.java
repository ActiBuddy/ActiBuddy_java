package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/review/select")
public class MateReviewSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		// 페이지가 없는 경우말고 페이지 번호 가져와줌
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		// 페이지 번호가 0보다 작아도 1페이지
		if(pageNo <= 0) {
			pageNo = 1;
		}
		// 검색 값
		String searchCondition = null;
		String searchValue = request.getParameter("searchValue");
		// map 설정
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchValue", searchValue);
		
		// 서비스 메소드에 map 넣어주기
		MateReviewService reviewService = new MateReviewService();
		int totalCount = reviewService.selectReviewTotalCount(searchMap);
		
		System.out.println("totalBoardCount : " + totalCount);
		
		int limit = 9;
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = null;
		
		/* 페이징 처리하실 분 여기는 각자 맞춰서 조건 다르게 설정해주세요! */
		
		// 검색 할 때 페이징 처리와 검색 안할 때 페이징 처리
		if(searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		System.out.println(selectCriteria);
		
		List<MateReviewDTO> reviewList = reviewService.selectAllReviewList(selectCriteria);
		
		System.out.println("reviewList : " + reviewList);
		
		String path = "";
		if(reviewList != null) {
			path = "/WEB-INF/views/mate/review.jsp";
			request.setAttribute("boardList", reviewList);
			request.setAttribute("selectCriteria", selectCriteria);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "리뷰 검색 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
