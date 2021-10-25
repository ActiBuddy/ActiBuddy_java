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

@WebServlet("/sort/controll")
public class SortControllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String date = request.getParameter("date");
		System.out.println("date");
//		String price = request.getParameter("price");
//		String[] prices = price.split("- ");
//		
//		
//		Map<String,String> priceMap = new HashMap<>();
//		priceMap.put("price1", prices[0]);
//		priceMap.put("price2", prices[1]);
//		
//		
//		
//		ActivityService activityService = new ActivityService();
//		
//		LocationAndActivityDTO locationActivity =  activityService.selectActivityByPrice(priceMap);
//		
//		String path = "";
//		if(price != null) {
//			path = "/WEB-INF/views/activity/activity.jsp";
//			request.setAttribute("price", locationActivity);
//		} 
//		
//		request.getRequestDispatcher(path).forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
