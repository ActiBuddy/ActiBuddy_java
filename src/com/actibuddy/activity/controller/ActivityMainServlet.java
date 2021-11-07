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
		

		String location = "서울";
		String location2 = "경기도";
		String location3 = "제주도";
		String location4 = "부산";
		
		List<LocationAndActivityDTO> locationList = activityService.selectAllList(location);
		List<LocationAndActivityDTO> locationList2 = activityService.selectAllList(location2);
		List<LocationAndActivityDTO> locationList3 = activityService.selectAllList(location3);
		List<LocationAndActivityDTO> locationList4 = activityService.selectAllList(location4);

		
		String path = "";
		if(locationList != null) {
			path = "/WEB-INF/views/activity/activityMain.jsp";
			request.setAttribute("locationList", locationList);
			request.setAttribute("locationList2", locationList2);
			request.setAttribute("locationList3", locationList3);
			request.setAttribute("locationList4", locationList4);
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
			request.setAttribute("message", "값을 찾지 못했습니다 돌아가세요!!");
		}
		
		 request.getRequestDispatcher(path).forward(request, response);
	}
}
