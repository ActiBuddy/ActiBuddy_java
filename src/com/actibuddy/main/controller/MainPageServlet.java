package com.actibuddy.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.LocationDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/main/page")
public class MainPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ActivityService activityService = new ActivityService();
		
		List<LocationDTO> locationList = activityService.selectLocation();
		
		for(LocationDTO lo : locationList) {
			
			System.out.println(locationList);
		}
		
		request.setAttribute("locationList", locationList);
		request.getRequestDispatcher("/WEB-INF/views/main/mainpage.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
