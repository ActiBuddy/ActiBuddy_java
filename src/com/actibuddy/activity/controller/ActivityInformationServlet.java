<<<<<<< HEAD
package com.actibuddy.activity.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/activity/information")
public class ActivityInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 데이터베이스 가서 현재 페이지를 구성하는 값을 조회해서 
		
		// 객체를 넣고
		
		// request객체에다가 setAttribute("activity", activity);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/activity/activity.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
=======
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
>>>>>>> refs/remotes/origin/master
