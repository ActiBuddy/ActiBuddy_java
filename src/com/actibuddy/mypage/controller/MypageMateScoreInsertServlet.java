package com.actibuddy.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.MypageMateScoreDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/mypage/mate/score/insert")
public class MypageMateScoreInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		String title = request.getParameter("title");
		String text = request.getParameter("checkScore");
	    String mateId = request.getParameter("mateId");
		String star = request.getParameter("rating");
		String plus = request.getParameter("elseWrite");
		
		System.out.println("작성자 아이디 : " + userId);
		System.out.println("글 제목 : " + title);
		System.out.println("글 내용 : " + text);
		System.out.println("평가할 아이디 : " + mateId);
		System.out.println("별점 : " + star);
		System.out.println("추가 내용 : " + plus);
		
		MypageMateScoreDTO scoreDTO = new MypageMateScoreDTO();
		scoreDTO.setScoredId(userId);
		scoreDTO.setUserId(mateId);
		scoreDTO.setScoreTitle(title);
		scoreDTO.setScoreCon(text);
		scoreDTO.setScoreStar(star);
		scoreDTO.setPlusScore(plus);
		
		MypageService mypageService = new MypageService();
		
		int result = mypageService.insertScore(scoreDTO);
		
		System.out.println("메이트 평가 등록 성공 여부 : " + result);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/mypage/mateList.jsp";
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
