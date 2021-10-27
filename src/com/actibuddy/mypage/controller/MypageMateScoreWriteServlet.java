package com.actibuddy.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;


@WebServlet("/mypage/mate/score/write")
public class MypageMateScoreWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/mateScoreWrite.jsp");
		rd.forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인된 아이디 담아주고
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		
		// jsp에서 입력된 값을 넘겨주자
		String title = request.getParameter("title"); // 제목
		String checkScore = request.getParameter("checkScore"); // 체크박스 값
		String elseWrite = request.getParameter("elseWrite"); // 기타 작성 값
		String scoreStar = request.getParameter("rating"); // 별점 값
		
		System.out.println(userId);
		System.out.println(title);
		System.out.println(checkScore);
		System.out.println(elseWrite);
		System.out.println("별점 : " + scoreStar);
		
		

	}

}
