package com.actibuddy.report.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.report.service.ReportService;

/**
 * Servlet implementation class ReportRejectServlet
 */
@WebServlet("/report/accept")
public class ReportAcceptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String title1 = request.getParameter("title1");
		
		String userId = request.getParameter("userId");
		String userId1 = request.getParameter("userId1");
		
		MateReviewDTO mateReviewwran = new MateReviewDTO();	//메이트 리뷰신고
		ActiReviewDTO actiReviewwarn = new ActiReviewDTO(); //액티비티 리뷰 신고
		
		mateReviewwran.setTitle(title);  // 제목으로 찾은후 신고값 Y로 변경
		actiReviewwarn.setTitle(title1); // 제목으로 찾은후 신고값 Y로 변경
		
		MemberDTO mateReviewwranmember = new MemberDTO(); // 메이트 리뷰 신고후 아이디 조회
		MemberDTO actiReviewwarnmember = new MemberDTO(); // 액티비티 리뷰 신고후 아이디 조회
		
		mateReviewwranmember.setUserId(userId);
		actiReviewwarnmember.setUserId(userId1);
		
		System.out.println("제목이 뭐임" + actiReviewwarn);
		
		
		ReportService reportService = new ReportService();
		
		int result = reportService.mateReviewwran(mateReviewwran,mateReviewwranmember);
		int result1 = reportService.actiReviewwarn(actiReviewwarn, actiReviewwarnmember);
		
		PrintWriter out = response.getWriter();
		if(result > 0 || result1 >0) {
			out.println("<script>alert('report has been rejected'); history.go(-2);</script>");
//			request.getRequestDispatcher("/WEB-INF/views/report/reportmatefind.jsp").forward(request, response);
		} else {
			out.println("<script>alert('fail'); history.go(-1);</script>");
		}
//		response.sendRedirect("/WEB-INF/views/report/reportmatefind.jsp");

	}


}
