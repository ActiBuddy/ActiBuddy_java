package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/review/sort")
public class ActiReviewSortServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Map<String, String> resultMap = new HashMap<>();
		
		String actiName = request.getParameter("actiName");
		System.out.println("클릭한 액티비티 : " + actiName);

		String sort = request.getParameter("sort");
		System.out.println(sort);
		
		ActivityService activityService = new ActivityService();
		ActivityInfoDTO activity = new ActivityInfoDTO();
		
		if(sort == null) {			
			activity = activityService.selectActivityInfo(actiName);
		} else {
			resultMap.put("actiName", actiName);
			resultMap.put("sort", sort);
			activity = activityService.sortActivityInfo(resultMap);
			
			
		};
		
		String[] map = activity.getActivityList().get(0).getLocation().split(",");
		
		List<ActivityDTO> recActivity = new ArrayList<>();
		recActivity = activityService.selectRecommendActivity(actiName);
		
		
		String path = "";

		if(activity != null) {
			path = "/WEB-INF/views/activity/activityInfo.jsp";
			request.setAttribute("activity", activity);
			request.setAttribute("recActivity" , recActivity);
			request.setAttribute("map", map);
			request.setAttribute("sort", sort);
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
