package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

@WebServlet("/search/controll")
public class SearchControllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Map<String,Object> resultMap = new HashMap<>();
		
		String searchValue = request.getParameter("searchValue");
		System.out.println(searchValue);
		
		String price = request.getParameter("price");
		System.out.println(price);
		
		String date = request.getParameter("date");
		System.out.println("날짜확인: " + date);
		
		String sort = request.getParameter("sort");
		System.out.println(sort);
		
		String sport = request.getParameter("hdCheck");
		System.out.println(sport);
		
		String ticket = request.getParameter("hdCheck1");
		System.out.println(ticket);
		
		String spa = request.getParameter("hdCheck2");
		System.out.println(spa);
		
		String tour = request.getParameter("hdCheck3");
		System.out.println(tour);
		
		String water = request.getParameter("hdCheck4");
		System.out.println(water);
		
		String selectAll = request.getParameter("selectAll");
		System.out.println("모두선택 버튼 값 : " + selectAll);
		
		String selectAll2 = request.getParameter("selectAll2");
		System.out.println("모두선택 버튼 값 : " + selectAll2);
		
		String selectAll3 = request.getParameter("selectAll3");
		System.out.println("모두선택 버튼 값 : " + selectAll3);
		
		String selectAll4 = request.getParameter("selectAll4");
		System.out.println("모두선택 버튼 값 : " + selectAll4);
		
		String selectAll5 = request.getParameter("selectAll5");
		System.out.println("모두선택 버튼 값 : " + selectAll5);
		
		String location = request.getParameter("location");
		System.out.println("지역 선택 값 : " + location);
		
		
		if(searchValue != null) {
			resultMap.put("date", date);
			resultMap.put("sort",sort);
			resultMap.put("searchValue", searchValue);
		}
		
		if(price != null) {
			String[] prices = price.split("-");
			resultMap.put("price1", (prices[0]));
			resultMap.put("price2", (prices[1]));
		}
		
		if(sport != null && sport != "") {
			String[] sports = sport.split(",");
				resultMap.put("sports", sports);
			
		}
		
		if(ticket != null && ticket != "") {
			String[] tickets = ticket.split(",");
			System.out.println(tickets[0]);
			resultMap.put("tickets", tickets);
		}
		
		if(spa != null && spa != "") {
			String[] spas = spa.split(",");
			resultMap.put("spas", spas);
			
		}
		
		if(tour != null && tour != "") {
			String[] tours = tour.split(",");	
			resultMap.put("tours", tours);
		
		}
		
		if(water != null && water != "") {
			String[] waters = water.split(",");	
			resultMap.put("waters", waters);
		
		}
		
		if(selectAll != null && selectAll != "") {
			String[] selctAlls = selectAll.split(",");
			resultMap.put("selectAlls", selctAlls);
		}
		
		if(selectAll2 != null && selectAll2 != "") {
			String[] selctAlls2 = selectAll2.split(",");
			resultMap.put("selectAlls2", selctAlls2);
		}
		
		if(selectAll3 != null && selectAll3 != "") {
			String[] selctAlls3 = selectAll3.split(",");
			resultMap.put("selectAlls3", selctAlls3);
		}
		
		if(selectAll4 != null && selectAll4 != "") {
			String[] selctAlls4 = selectAll4.split(",");
			resultMap.put("selectAlls4", selctAlls4);
		}
		
		if(selectAll5 != null && selectAll5 != "") {
			String[] selctAlls5 = selectAll5.split(",");
			resultMap.put("selectAlls5", selctAlls5);
		}
		
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
		
		System.out.println("값"  + searchList);
		
		String path = "";
		if(price != null) {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("price", price);
			request.setAttribute("selectCriteria", selectCriteria);
		} 
		
		if(sort != null) {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("sort", sort);
			request.setAttribute("selectCriteria", selectCriteria);
		} 
		
		if(searchList == null) {
			path = "/WEB-INF/views/activity/activityNull.jsp";
		} else if(date != null && date != "") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("date", date);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(sport != null && sport != ""){
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("sport", sport);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(ticket != null && ticket != "") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("ticket", ticket);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(spa != null && spa != "") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("spa", spa);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(tour != null && tour != "") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("locationActivity", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("tour", tour);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(water != null && water != "") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("water", water);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(selectAll != null && selectAll !="") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("locationActivity", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("selectAll", selectAll);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(selectAll2 != null && selectAll2 !="") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("selectAll2", selectAll2);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(selectAll3 != null && selectAll3 !="") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("selectAll3", selectAll3);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(selectAll4 != null && selectAll4 !="") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("selectAll4", selectAll4);
			request.setAttribute("selectCriteria", selectCriteria);
		} else if(selectAll5 != null && selectAll5 !="") {
			path = "/WEB-INF/views/activity/searchActivity.jsp";
			request.setAttribute("searchList", searchList);
			request.setAttribute("move", "move");
			request.setAttribute("selectAll5", selectAll5);
			request.setAttribute("selectCriteria", selectCriteria);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
	}
		
}