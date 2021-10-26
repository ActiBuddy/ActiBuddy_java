package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/activity/ajax")
public class ActivityAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String locationName = request.getParameter("locationName");
		System.out.println(locationName);
		
		String price = request.getParameter("price");
		System.out.println(price);
		
		String date = request.getParameter("date");
		System.out.println(date);
		
		String sort = request.getParameter("sort");
		System.out.println(sort);

		Map<String,String> resultMap = new HashMap<>();
		if(price != null) {
			String[] prices = price.split("- ");
			resultMap.put("price1", prices[0]);
			resultMap.put("price2", prices[1]);
			resultMap.put("date", date);
			resultMap.put("sort",sort);
			resultMap.put("locationName", locationName);
		} else {
			resultMap.put("sort",sort);
			resultMap.put("date", date);
			resultMap.put("locationName", locationName);
		}
		
		
		ActivityService activityService = new ActivityService();
		LocationAndActivityDTO locationActivity = activityService.selectLocationInfo(resultMap);
		
		System.out.println("값"  + locationActivity);
		
		String path = "";
		if(locationActivity != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("location", locationActivity);
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
