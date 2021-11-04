package com.actibuddy.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateFindAndApplyDTO;
import com.actibuddy.mate.model.dto.MateFindApplyDTO;
import com.actibuddy.mate.model.service.MateFindService;
import com.actibuddy.member.model.dto.MemberDTO;


@WebServlet("/mypage/matelist")
public class MypageMateListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		/* 사용자가 신청한 메이팅 구인글 조회하기 */
		MateFindService mateFindService = new MateFindService();
		MateFindAndApplyDTO mtApply = mateFindService.selectMtApplyHis(userId);
		
		System.out.println(mtApply);
		
		String path = "";

		if(mtApply != null) {
			path = "/WEB-INF/views/mypage/mateList.jsp";
			request.setAttribute("mtApply", mtApply);
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
