package com.actibuddy.faq.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.faq.service.FaqService;
import com.actibuddy.member.model.dto.MemberDTO;

@WebServlet("/faq/answer")
public class FaqAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String queTitle = request.getParameter("queTitle");
		String answer = request.getParameter("answer");
		
		FaqDTO faqList = new FaqDTO();
		
		faqList.setAnswer(answer);
		faqList.setQueTitle(queTitle);
		
		System.out.println(queTitle);
		
		int result = new FaqService().registAnswer(faqList);
		
		System.out.println(result);
	}
}
