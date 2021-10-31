package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.model.dto.LocationDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/activity/main")
public class ActivityMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ActivityService activityService = new ActivityService();
		
		List<LocationAndActivityDTO> locationList = activityService.selectAllList();

		
		System.out.println(locationList);
		
		String path = "";
		if(locationList != null) {
			path = "/WEB-INF/views/activity/activityMain.jsp";
			request.setAttribute("locationList", locationList);
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
			request.setAttribute("message", "값을 찾지 못했습니다 돌아가세요!!");
		}
		
		 request.getRequestDispatcher(path).forward(request, response);
	}
}
