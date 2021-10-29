package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;

@WebServlet("/mate/review/select")
public class MateReviewSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mate/mateReviewView.jsp");
		rd.forward(request, response);
		
	}

}
