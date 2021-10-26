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
//		String price = request.getParameter("price");
//		System.out.println(price);
//		
//		String[] prices = price.split("- ");
		
		String date = request.getParameter("date");
		System.out.println(date);
		
//		String sort = request.getParameter("sort");
//		System.out.println(sort);

		Map<String,String> resultMap = new HashMap<>();
		resultMap.put("date", date);
		
		ActivityService activityService = new ActivityService();
		LocationAndActivityDTO locationActivity = activityService.selectLocationInfo(null);
		
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
