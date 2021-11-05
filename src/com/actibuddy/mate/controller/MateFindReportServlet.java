package com.actibuddy.mate.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateCommentDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateFindService;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/find/report")
public class MateFindReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String findNum = request.getParameter("num");
//		char repYn = request.getParameter("rep").charAt(0);
		char updateRepYn = 'L';
		
		String commentNum = request.getParameter("comNum");
		
		System.out.println("신고할 후기 게시글 번호 : " + findNum);
		System.out.println("신고 업데이트값 : " + updateRepYn);
		System.out.println("신고할 댓글 번호 : " + commentNum);
		
		MateFindDTO find = new MateFindDTO();
		find.setNum(findNum);
		find.setRepYn(updateRepYn);
		
		MateCommentDTO comment = new MateCommentDTO();
		comment.setNum(commentNum);
		comment.setRepYn(updateRepYn);
		
		MateFindService mateFindService = new MateFindService();
		int result = mateFindService.updateRepYn(find);
		int comResult = mateFindService.updateComReqYn(comment);
		
		
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		out.print(comResult);
		
		out.flush();
		out.close();
	}

}
