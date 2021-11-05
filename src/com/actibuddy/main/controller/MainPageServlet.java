package com.actibuddy.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.LocationDTO;
import com.actibuddy.activity.service.ActivityService;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.service.MateFindService;

@WebServlet("/main/page")
public class MainPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ActivityService activityService = new ActivityService();
		
		List<LocationDTO> locationList = activityService.selectLocation();
		
		for(LocationDTO lo : locationList) {
			
			System.out.println(locationList);
		}
		
		List<ActivityDTO> actiList = activityService.selectManyView();
		
		MateFindService findService = new MateFindService();
		List<MateFindDTO> hurryFindList = findService.selectHurryFind();
		
		
		request.setAttribute("locationList", locationList);
		request.setAttribute("activityList", actiList);
		request.setAttribute("hurryFindList", hurryFindList);
		request.getRequestDispatcher("/WEB-INF/views/main/mainpage.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
