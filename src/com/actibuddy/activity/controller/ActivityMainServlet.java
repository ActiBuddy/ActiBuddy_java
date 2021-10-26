package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/activity/main")
public class ActivityMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ActivityService activityService = new ActivityService();
		
		ActivityInfoDTO locationList = activityService.selectAllList();
		
		System.out.println(locationList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/activity/activityMain.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

}
