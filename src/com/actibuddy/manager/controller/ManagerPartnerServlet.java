package com.actibuddy.manager.controller;

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
import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.manager.service.ManagerService;
import com.actibuddy.partnership.model.DTO.PartnerDTO;

@WebServlet("/manager/partnermember")
public class ManagerPartnerServlet extends HttpServlet {
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
		String searchCondition = request.getParameter("location");
		String searchValue = request.getParameter("searchValue");
		// map 설정
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);

		/* ======= 공통 처리 ======== */
		// 전체 게시물 수 필요
		// 검색 조건이 있는 경우 검색 조건에 맞는 전체 게시물 수 조회
		
		
//		=================================================
		ManagerService managerService = new ManagerService();
		
		int totalCount = managerService.selectFindTotalCount(searchMap);
				
		System.out.println("totalBoardCount : " + totalCount);
		
		int limit = 10;
		int buttonAmount = 5;

		SelectCriteria selectCriteria = null;

		// 검색 할 때 페이징 처리와 검색 안할 때 페이징 처리
		if(searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		
		List<ManagerDTO> managerList = managerService.selectPartnerMember(selectCriteria);		
		
		System.out.println("리스트 확인" + managerList);
		
		request.setAttribute("managerList", managerList);
		request.setAttribute("selectCriteria", selectCriteria);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerPartner.jsp");
		rd.forward(request, response);
		
	}
	
	
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
