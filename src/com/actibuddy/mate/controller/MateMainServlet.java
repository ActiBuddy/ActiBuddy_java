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
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateFindService;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/main")
public class MateMainServlet extends HttpServlet {
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
		
		/* ======== 검색 처리 ========*/
		// 검색 값
		String searchValue = request.getParameter("searchValue");
		String location = request.getParameter("location");
		String searchCondition ="";
		
		System.out.println("지역 : " + location);
		System.out.println("검색값 : " + searchValue);
		
		// 처음에 지역에 선택이 안되었기 때문에(radio -> label로 변경해서 처리해서)
		if(location == null) {
			location = "a";
		}
		
		switch(location) {
		case "a": searchCondition="전체";break;
		case "b": searchCondition="서울"; break;
		case "c": searchCondition="경기"; break;
		case "d": searchCondition="강원"; break;
		case "e": searchCondition="충청"; break;
		case "f": searchCondition="전라"; break;
		case "g": searchCondition="경상"; break;
		case "h": searchCondition="부산"; break;
		case "i": searchCondition="제주"; break;
		}
		
		System.out.println("서치 : " + searchCondition);
		// map 설정
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchValue", searchValue);
		searchMap.put("searchCondition", searchCondition);

		/* ======= 공통 처리 ======== */
		// 전체 게시물 수 필요
		// 검색 조건이 있는 경우 검색 조건에 맞는 전체 게시물 수 조회
		MateFindService findService = new MateFindService();
		int totalCount = findService.selectFindTotalCount(searchMap);

		System.out.println("totalCount : " + totalCount);

		int limit = 10;
		int buttonAmount = 5;

		SelectCriteria selectCriteria = null;

		// 검색 할 때 페이징 처리와 검색 안할 때 페이징 처리
		if(searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}

		System.out.println("로케이션 : " + location);
		System.out.println("밸류 : " + searchValue);
		System.out.println("criteria : " + selectCriteria);
		/* find 조회 */
		List<MateFindDTO> findList = findService.selectAllFindList(selectCriteria);
		List<MateFindDTO> hurryFindList = findService.selectHurryFind();
		
		System.out.println("마감 임박 파인드 : " + hurryFindList);
		/* review 조회 */
		MateReviewService reviewService = new MateReviewService();
		List<MateReviewDTO> newReviewList = reviewService.selectNewReview();

		String path = "";
		if(findList != null) {
			path = "/WEB-INF/views/mate/mateMain.jsp";
			request.setAttribute("findList", findList);
			request.setAttribute("selectCriteria", selectCriteria);
			request.setAttribute("newReviewList", newReviewList);
			request.setAttribute("hurryFindList", hurryFindList);
		    request.setAttribute("location1", location);

		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "메이트 구인 페이지 조회 실패!");
		}

		request.getRequestDispatcher(path).forward(request, response);

	}

}
