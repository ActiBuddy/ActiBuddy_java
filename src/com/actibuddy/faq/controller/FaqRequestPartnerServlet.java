package com.actibuddy.faq.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.faq.service.FaqService;

@WebServlet("/faq/partnerquestion")
public class FaqRequestPartnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String queTitle = request.getParameter("queTitle");
		String queEmail = request.getParameter("queEmail");
		String userId = request.getParameter("userId");
		String queCon = request.getParameter("queCon");
		
		System.out.println("queTitle : " + queTitle);
		System.out.println("queEmail : " + queEmail);
		System.out.println("userId : " + userId);
		
		
		FaqDTO faq = new FaqDTO();
		
		faq.setQueEmail(queEmail);
		faq.setQueCon(queCon);
		faq.setQueTitle(queTitle);
		faq.setQueType("P");
		faq.setUserId(userId);
		
		System.out.println(faq);
		
		
		int result = new FaqService().registFaqPartner(faq);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(result > 0) {
			out.println("<script>alert('success'); history.go(-1);</script>");
		} else {
			out.println("<script>alert('sorry 안댔음'); history.go(-1);</script>");
		}
		
	}
	
	}


