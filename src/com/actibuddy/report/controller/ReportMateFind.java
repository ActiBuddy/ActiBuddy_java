package com.actibuddy.report.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.report.service.ReportService;

@WebServlet("/report/matefind")
public class ReportMateFind extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
//		MateReviewDTO mateReviewDTO = new MateReviewDTO();
//		ActiReviewDTO actiReviewDTO = new ActiReviewDTO();
		
		ReportService reportService = new ReportService();
		
		List<MateReviewDTO> matefindrep = reportService.matefindrep();
		
		request.setAttribute("matefindrep", matefindrep);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/report/reportmatefind.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
