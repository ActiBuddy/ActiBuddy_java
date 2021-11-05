package com.actibuddy.report.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.report.service.ReportService;

/**
 * Servlet implementation class ReportMatingReview
 */
@WebServlet("/report/matingreview")
public class ReportMatingReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReportService reportService = new ReportService();
		
		List<MateReviewDTO> matereviewrep = reportService.matefindrep();
		
		request.setAttribute("matefindrep", matereviewrep);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/report/reportmatefind.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
