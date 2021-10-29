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

@WebServlet("/activity/location")
public class ActivityLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String locationName = request.getParameter("locationName"); 
		System.out.println("locationName 확인 : " + locationName);
		
		Map<String,Object> resultMap = new HashMap<>();	
		resultMap.put("locationName", locationName);
		
		ActivityService activityService = new ActivityService();
		LocationAndActivityDTO location = activityService.selectLocationInfo(resultMap);
		System.out.println("location 확인 :" +location);
		
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
