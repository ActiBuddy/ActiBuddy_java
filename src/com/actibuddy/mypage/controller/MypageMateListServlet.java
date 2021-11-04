package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateFindApplyDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/matelist")
public class MypageMateListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		MypageService mypageService = new MypageService();
		List<MateFindApplyDTO> mtApplyList = mypageService.selectMtApply(userId);
		
		request.setAttribute("mtApplyList", mtApplyList );
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/mateList.jsp");
		rd.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
