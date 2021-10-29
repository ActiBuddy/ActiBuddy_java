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
		ActivityService activityService = new ActivityService();
		LocationAndActivityDTO locationActivity = activityService.selectLocationInfo(resultMap);
		LocationDTO location = activityService.selectLocationOne(locationName);
		
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
		
		System.out.println("값"  + locationActivity);
		
		String path = "";
		
		if(price != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("price", price);
		} 
		
		
		
		if(sort != null) {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("sort", sort);
			
		} 
		if(locationActivity == null) {
			path = "/WEB-INF/views/activity/activityNull.jsp";
			request.setAttribute("location", location);
			request.setAttribute("vistis", map);
		} else if(date != null && date != "") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("date", date);
			System.out.println("날짜확인용");
		} else if(sport != null && sport != ""){
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("sport", sport);
		} else if(ticket != null && ticket != "") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("ticket", ticket);
		} else if(spa != null && spa != "") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("spa", spa);
		} else if(tour != null && tour != "") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("tour", tour);
		} else if(water != null && water != "") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("water", water);
		} else if(selectAll != null && selectAll !="") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("selectAll", selectAll);
		} else if(selectAll2 != null && selectAll2 !="") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
			request.setAttribute("selectAll2", selectAll2);
		} else if(selectAll3 != null && selectAll3 !="") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
		} else if(selectAll4 != null && selectAll4 !="") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
		} else if(selectAll5 != null && selectAll5 !="") {
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", locationActivity);
			request.setAttribute("vistis", map);
			request.setAttribute("move", "move");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
