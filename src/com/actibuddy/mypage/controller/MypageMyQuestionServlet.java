package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.faq.model.dto.FaqDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/question")
public class MypageMyQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		
		MypageService mypageService = new MypageService();
		List<FaqDTO> selectFaq = mypageService.selectFaq(userId);
		
		System.out.println("셀렉트 질문 :"+  selectFaq);
		
		request.setAttribute("selectFaq", selectFaq);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/myQuestion.jsp");
		rd.forward(request, response);
		
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

}
