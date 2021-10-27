package com.actibuddy.activity.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.service.ActivityService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@WebServlet("/activity/ajax")
public class ActivityAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String locationName = request.getParameter("locationName");
		System.out.println(locationName);
		
		String price = request.getParameter("priceValue");
		System.out.println(price);
		
		String date = request.getParameter("dateValue");
		System.out.println(date);
		
		String sort = request.getParameter("sortValue");
		System.out.println(sort);

		Map<String,Object> resultMap = new HashMap<>();
		if(price != null) {
			String[] prices = price.split("-");
			resultMap.put("price1", Integer.parseInt(prices[0]));
			resultMap.put("price2", Integer.parseInt(prices[1]));
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
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(locationActivity));
		
		out.flush();
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
