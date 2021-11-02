package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/activity/information")
public class ActivityInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String actiName = request.getParameter("actiName");
		System.out.println("클릭한 액티비티 : " + actiName);

		ActivityService activityService = new ActivityService();
		ActivityInfoDTO activity = activityService.selectActivityInfo(actiName);
// 		System.out.println("액티비티 리스트 조회 : " + activity.getActivityList());
//		System.out.println(activity.getConditionList());
//		System.out.println(activity.getLocationList());
//		System.out.println(activity.getOptionList());
//  	System.out.println(activity.getReviewList());
//		System.out.println(activity.getTypeList());
		
		System.out.println("=====================================================");
		
		String[] map = activity.getActivityList().get(0).getLocation().split(",");
//		for(String m : map) {
//			System.out.println(m);
//		}
		
		System.out.println("=====================================================");
		
		int viewUpdate = activityService.updateViews(actiName);
		
		List<ActivityDTO> recActivity = new ArrayList<>();
		recActivity = activityService.selectRecommendActivity(actiName);
//		for(ActivityDTO acti : recActivity) {
//			System.out.println(acti);
//		}
		
		String path = "";

		if(activity != null) {
			path = "/WEB-INF/views/activity/activityInfo.jsp";
			request.setAttribute("activity", activity);
			request.setAttribute("recActivity" , recActivity);
			request.setAttribute("map", map);
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

