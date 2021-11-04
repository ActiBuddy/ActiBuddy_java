package com.actibuddy.mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mate/comment")
public class MateFindComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String text = request.getParameter("text");
		String userId = request.getParameter("userId");
		
		System.out.println("text 확인 : " + text);
		System.out.println("userId 확인 : " + userId);
		
		request.getRequestDispatcher("/WEB-INF/views/mate/mateFindView.jsp").forward(request, response);
	}

}
