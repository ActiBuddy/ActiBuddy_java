package com.actibuddy.mate.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateFindApplyDTO;
import com.actibuddy.mate.model.service.MateFindService;

@WebServlet("/find/apply")
public class MateFindApplyHisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String findNum = request.getParameter("findNum");
		
		System.out.println(userId);
		System.out.println(findNum);
		
		MateFindApplyDTO find = new MateFindApplyDTO();
		find.setAppliedId(userId);
		find.setNum(findNum);
		
		MateFindService mateService = new MateFindService();
		int result = mateService.insertApply(find);
		System.out.println("result : " + result);
		
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		out.close();
		
	}

}
