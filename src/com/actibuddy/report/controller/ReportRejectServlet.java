package com.actibuddy.report.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.report.service.ReportService;

/**
 * Servlet implementation class ReportRejectServlet
 */
@WebServlet("/report/reject")
public class ReportRejectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String title = request.getParameter("title");
	String title1 = request.getParameter("title1");
	
	MateReviewDTO mateReviewwran = new MateReviewDTO();	//메이트 리뷰신고
	ActiReviewDTO actiReviewwarn = new ActiReviewDTO(); //액티비티 리뷰 신고
	
	mateReviewwran.setTitle(title);
	actiReviewwarn.setTitle(title1);
	
	System.out.println("제목이 뭐임" + actiReviewwarn);
	
	ReportService reportService = new ReportService();
	
	int result = reportService.rejectreport(mateReviewwran);
	int result1 = reportService.rejectreportactireview(actiReviewwarn);
	
	List<MateReviewDTO> matefindrep = reportService.matefindrep();
	
	request.setAttribute("matefindrep", matefindrep);

	PrintWriter out = response.getWriter();
	if(result > 0 || result1 > 0) {
		out.println("<script>alert('report has been rejected'); history.go(-2);</script>");
//		request.getRequestDispatcher("/WEB-INF/views/report/reportmatefind.jsp").forward(request, response);
	} else {
		out.println("<script>alert('fail'); history.go(-1);</script>");
	}
//	response.sendRedirect("/WEB-INF/views/report/reportmatefind.jsp");

	}

}
