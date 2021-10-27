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

import com.actibuddy.mate.model.service.MateReviewService;


@WebServlet("/mate/review/list")
public class MateReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터에 있는 커런트 페이지가 어디서 나온거예요..?
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
		// 검색 조건과 검색 값
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		// map 설정
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		
		// 서비스 메소드에 map 넣어주기
		MateReviewService reviewService = new MateReviewService();
		int totalCount = reviewService.selectTotalCount(searchMap);
		
		System.out.println("totalBoardCount : " + totalCount);
		
	}
}