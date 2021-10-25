package com.actibuddy.activity.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActivityAndReviewDTO;
import com.actibuddy.activity.service.ActivityService;

@WebServlet("/activity/information")
public class ActivityInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String actiName = request.getParameter("actiName");
		System.out.println("클릭한 액티비티 : " + actiName);

		ActivityService activityService = new ActivityService();
		ActivityAndReviewDTO activity = activityService.selectActivityInfo(actiName);
		System.out.println(activity);

		String path = "";

		if(activity != null) {
			path = "/WEB-INF/views/activity/activityInfo.jsp";
			request.setAttribute("activity", activity);
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

