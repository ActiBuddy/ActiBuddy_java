package com.actibuddy.activity.controller;

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

import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.SearchDTO;
import com.actibuddy.activity.service.ActivityService;
import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;

@WebServlet("/search/activity")
public class SearchActivityServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 검색어 확인 */
		String searchValue = request.getParameter("searchValue");
		System.out.println("search check : " + searchValue);
		
		Map<String, Object> resultMap = new HashMap<>();	
		resultMap.put("searchValue", searchValue);
		
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
		
		ActivityService activityService = new ActivityService();
		int totalCount = activityService.totalCountBySearch(resultMap);
		System.out.println(totalCount);
		
		int limit = 9;
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = null;
		
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		resultMap.put("startRow", selectCriteria.getStartRow());
		resultMap.put("endRow", selectCriteria.getEndRow());
		
		List<ActivityDTO> searchList = activityService.searchActivity(resultMap);
		System.out.println(searchList);

		String path = "";
		if(searchList != null) {
			path="/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("selectCriteria", selectCriteria);
			request.setAttribute("searchValue", selectCriteria.getSearchValue());
		} else {
			path="/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
		
	}

}
