package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.service.ActivityService;
import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;

@WebServlet("/activity/location")
public class ActivityLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String locationName = request.getParameter("locationName"); 
		System.out.println("locationName 확인 : " + locationName);
		
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
		
		Map<String,Object> resultMap = new HashMap<>();	
		resultMap.put("locationName", locationName);
		
		ActivityService activityService = new ActivityService();
		int totalCount = activityService.totalActivityCount(locationName);
		System.out.println(totalCount);
		
		int limit = 9;
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = null;
		
		LocationAndActivityDTO actiList = activityService.selectActiName(locationName);
		System.out.println(actiList);
		
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		resultMap.put("startRow", selectCriteria.getStartRow());
		resultMap.put("endRow", selectCriteria.getEndRow());
		
		LocationAndActivityDTO location = activityService.selectLocationInfo(resultMap);
	
		System.out.println("location 확인 :" + location);
		
		String[] month = location.getVisitMonth().split(",");
		String[] name = location.getVisitName().split(",");
		
		for(String mo : month) {
			System.out.println(mo);
		}
		
		for(String na : name) {
			System.out.println(na);
		}
		
		Map<String, String> map = new HashMap<>();
		for(int i = 0; i < month.length; i++) {
			map.put("vistis", "<header id=\"visitHeader\">" + month[i] + "</header> <p id=\"visitBody\">" + name[i] +"</p>");
		}
		
		String path = "";
		if(location != null){
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", location);
			request.setAttribute("selectCriteria", selectCriteria);
			request.setAttribute("vistis", map);
		} else {
			path = "/WEB-INF/views/actiFail.jsp";
			request.setAttribute("message", "값을 불러오는데 실패하였습니다");
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
