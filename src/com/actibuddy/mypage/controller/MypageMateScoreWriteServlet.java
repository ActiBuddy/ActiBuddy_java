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

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// jsp에서 입력된 값을 넘겨주자
		String title = request.getParameter("title"); // 제목
		String mateId = request.getParameter("mateId"); // 평가할 메이트 아이디
		String findNo = request.getParameter("num"); // 평가할 구인글 번호
		
		System.out.println(title);
		System.out.println(mateId);
		System.out.println(findNo);
		
		String path = "";

		if(title != null && mateId != null) {
			path = "/WEB-INF/views/mypage/mateScoreWrite.jsp";
			request.setAttribute("title", title);
			request.setAttribute("mateId", mateId);
			request.setAttribute("findNo", findNo);
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
		

	}

}
