package com.actibuddy.mate.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mate/find/regist")
public class MateFindRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mate/mateFindWriting.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("=======================================");
		String userId = request.getParameter("userId");
		System.out.println("아이디 체크 : " + userId);
	}

}
