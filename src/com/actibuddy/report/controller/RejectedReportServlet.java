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

@WebServlet("/report/rejected")
public class RejectedReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		String title = request.getParameter("title");
//		
//		MateReviewDTO reviewreport = new MateReviewDTO();		// 메이트 리뷰 DTO
//		ActiReviewDTO actireviewreport = new ActiReviewDTO();	// 액티비티 리뷰 DTO
//		reviewreport.setTitle(title);
//		actireviewreport.setTitle(title);
//		System.out.println("리뷰 리포트 " + reviewreport );
//		System.out.println("리뷰 리포트 " + actireviewreport );
		
		ReportService reportService = new ReportService();
		
		List<MateReviewDTO> reviewreportinfo = reportService.rejectedmatefindrepdetail();
		List<ActiReviewDTO> actireviewreportinfo = reportService.rejectedactireviewrepdetail();
		
		System.out.println(reviewreportinfo);
		System.out.println(actireviewreportinfo);
		
		request.setAttribute("reviewreportinfo", reviewreportinfo);
		request.setAttribute("actireviewreportinfo", actireviewreportinfo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/report/rejectedreport.jsp");
		rd.forward(request, response);
	
	}

}
