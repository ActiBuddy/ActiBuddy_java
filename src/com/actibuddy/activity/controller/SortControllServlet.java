package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.model.dto.LocationDTO;
import com.actibuddy.activity.service.ActivityService;
import com.google.gson.Gson;

@WebServlet("/sort/controll")
public class SortControllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson = new Gson();
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map<String,Object> resultMap = new HashMap<>();
		
		String locationName = request.getParameter("hdLocationName");
		System.out.println(locationName);
		
		String price = request.getParameter("price");
		System.out.println(price);
		
		String date = request.getParameter("date");
		System.out.println(date);
		
		String sort = request.getParameter("sort");
		System.out.println(sort);
		
		String[] sport = request.getParameterValues("hdCheck");
		System.out.println(sport);
		
		String[] ticket = request.getParameterValues("hdCheck1");
		System.out.println(ticket);
		
		String[] spa = request.getParameterValues("hdCheck2");
		System.out.println(spa);
		
		String[] tour = request.getParameterValues("hdCheck3");
		System.out.println(tour);
		
		String[] water = request.getParameterValues("hdCheck4");
		System.out.println(water);
		
		if(locationName != null) {
			resultMap.put("date", date);
			resultMap.put("sort",sort);
			resultMap.put("locationName", locationName);
		}
		
		if(price != null) {
			String[] prices = price.trim().split("-");
			resultMap.put("price1", (prices[0]));
			resultMap.put("price2", (prices[1]));
		}
		
		if(sport != null) {
			for(int i = 0; i <sport.length; i++) {
				resultMap.put("sport", sport[i]);
			}
		}
		
		if(ticket != null) {
			for(int i = 0; i <sport.length; i++) {
				resultMap.put("ticket", ticket[i]);
			}
		}
		
		if(spa != null) {
			for(int i = 0; i <sport.length; i++) {
				resultMap.put("spa", spa[i]);
			}
			
		}
		
		if(tour != null) {
			for(int i = 0; i <sport.length; i++) {
				resultMap.put("tour", tour[i]);
			}
		}
		
		if(water != null) {
			for(int i = 0; i <sport.length; i++) {
				resultMap.put("water", water[i]);
			}
		}
//		System.out.println(resultMap);
		
		ActivityService activityService = new ActivityService();
		LocationAndActivityDTO locationActivity = activityService.selectLocationInfo(resultMap);
		
		LocationDTO location = activityService.selectLocationOne(locationName);
		
		System.out.println("값"  + locationActivity);
//		System.out.println("값"  + location);
		
		String path = "";
		if(price != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("move", "move");
		} else if(sport != null){
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("move", "move");
		} else if(ticket != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("move", "move");
		} else if(spa != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("move", "move");
		} else if(tour != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("move", "move");
		} else if(water != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("move", "move");
		} else if(locationActivity == null) {
//			path = "/WEB-INF/views/activity/activityNull.jsp";
//			request.setAttribute("location", location);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
