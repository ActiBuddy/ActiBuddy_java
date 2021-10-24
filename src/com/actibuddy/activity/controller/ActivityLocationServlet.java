package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.LocationDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/activity/location")
public class ActivityLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 데이터베이스 가서 현재 페이지를 구성하는 값을 조회해서 
		
		// 객체를 넣고
		
		// request객체에다가 setAttribute("activity", activity);
		
		String locationName = request.getParameter("locationName");
		System.out.println(locationName);
		
		ActivityService activityService = new ActivityService();
		LocationDTO location = activityService.selectLocationInfo(locationName);
		
		System.out.println(location);
		String[] month = location.getVisitMonth().split(",");
		String[] name = location.getVisitName().split(",");
		
		for(String mo : month) {
			System.out.println(mo);
		}
		
		for(String na : name) {
			System.out.println(na);
		}
		
		Map<String, String[]> map = new HashMap<>();
		map.put("month", month);
		map.put("name", name);
		
		String path = "";
		
		if(location != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("location", location);
			request.setAttribute("map", map);
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
