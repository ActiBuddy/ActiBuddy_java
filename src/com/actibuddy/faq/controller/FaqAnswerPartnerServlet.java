package com.actibuddy.faq.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.faq.service.FaqService;

/**
 * Servlet implementation class FaqPartnerAnswerServlet
 */
@WebServlet("/faq/partner")
public class FaqAnswerPartnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		FaqService faqService = new FaqService();
		
		List<FaqDTO> faqList = faqService.partnerFaq();		
		
		System.out.println(faqList);
		request.setAttribute("faqList", faqList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerPartnerFaq.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
