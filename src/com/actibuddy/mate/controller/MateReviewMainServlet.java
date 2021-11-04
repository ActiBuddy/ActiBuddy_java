package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;
import com.actibuddy.member.model.dto.MemberDTO;

@WebServlet("/mate/review")
public class MateReviewMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* ======== 페이징 처리 ========*/
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		// 현재페이지가 설정된 경우 페이지 번호는 변경된다.
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		// 페이지 번호가 0보다 작아도 1페이지
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		System.out.println(currentPage);
		System.out.println(pageNo);
		
		/* ======== 검색 처리 ========*/
		// 검색 값
		String searchCondition = null;
		String searchValue = request.getParameter("searchValue");
		// map 설정
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchValue", searchValue);
		
		/* ======= 공통 처리 ======== */
		// 전체 게시물 수 필요
		// 검색 조건이 있는 경우 검색 조건에 맞는 전체 게시물 수 조회
		MateReviewService reviewService = new MateReviewService();
		int totalCount = reviewService.selectReviewTotalCount(searchMap);
		
		System.out.println("totalBoardCount : " + totalCount);
		
		int limit = 9;
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = null;
		
		
		// 검색 할 때 페이징 처리와 검색 안할 때 페이징 처리
		if(searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		System.out.println("criteria : " + selectCriteria);
		
		List<MateReviewDTO> reviewList = reviewService.selectAllReviewList(selectCriteria);
		
//		System.out.println("reviewList : " + reviewList);
		
		List<MateReviewDTO> bestReviewList = reviewService.selectBestReview();
		System.out.println("리스트 확인 : " + bestReviewList);
		
		String path = "";
		if(reviewList != null) {
			path = "/WEB-INF/views/mate/mateReview.jsp";
			request.setAttribute("reviewList", reviewList);
			request.setAttribute("bestReviewList", bestReviewList);
			request.setAttribute("selectCriteria", selectCriteria);
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "메이트 리뷰 페이지 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
}
