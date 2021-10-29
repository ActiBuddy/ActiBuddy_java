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

@WebServlet("/sort/controll")
public class SortControllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		
		if(locationName != null) {
			resultMap.put("date", date);
			resultMap.put("sort",sort);
			resultMap.put("locationName", locationName);
		}
		
		if(price != null) {
			String[] prices = price.split("-");
			resultMap.put("price1", (prices[0]));
			resultMap.put("price2", (prices[1]));
		}
		
		if(sport != null) {
			String[] sports = sport.split(",");
			for(int i = 0; i < sports.length; i++) {
				resultMap.put("sport [" + i + "]", sports[i]);
			}
		}
		
		if(ticket != null) {
			
			resultMap.put("ticket", ticket);
		}
		
		if(spa != null) {
			
			resultMap.put("spa", spa);
			
		}
		
		if(tour != null) {
				
			resultMap.put("tour", tour);
		
		}
		
		if(water != null) {
				
			resultMap.put("water", water);
		
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
