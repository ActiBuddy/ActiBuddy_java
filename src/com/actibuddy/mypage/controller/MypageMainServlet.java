package com.actibuddy.mypage.controller;

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

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.model.dto.MypageMateScoreDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/mypage/main")
public class MypageMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 소개 가져오기
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		MypageService mypageService = new MypageService();
		CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(map);
		
		request.setAttribute("tripList", tripList);
		
		// 메이트 평가 가져오기
		List<MypageMateScoreDTO> mateScore = mypageService.selectMateScore(userId); 
		
		request.setAttribute("mateScore", mateScore);
		System.out.println("메이트 평가 : " + mateScore);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/myPage.jsp");
		rd.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 로그인된 아이디 담아주고
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();

		// jsp에서 값을 받아오자
		String favoriteActi = request.getParameter("favoriteActi");
		String introduce = request.getParameter("introduce");
		
		System.out.println(introduce);
		System.out.println(favoriteActi); // 잘 들어오는지 확인하고 : ok
//		System.out.println("로그인된 아이디 : " + userId); // : ok

		// DTO에 담아 값을 넣어주고
		  MemberDTO requestIntroduce = new MemberDTO();
		  requestIntroduce.setUserId(userId);
		  requestIntroduce.setIntroduce(introduce);
		  requestIntroduce.setFavoriteActi(favoriteActi);
		  
		 // 서비스에 메소드 생성하게 보내주고 
		  int result = new MypageService().registIntroduce(requestIntroduce);
		  
		 System.out.println("mypageController result : " + result);
		 System.out.println("aaa : " +  requestIntroduce.getIntroduce());
		 
		 // 업데이트 한 후에도 메이트평가 정보 가져와야 하니까
		 MypageService mypageService = new MypageService();
		 List<MypageMateScoreDTO> mateScore = mypageService.selectMateScore(userId); 
		 
		 Map<String, String> map = new HashMap<>();
		 map.put("userId", userId);
		 CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(map);
			
		  
		  RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/myPage.jsp");
		  request.setAttribute("mateScore", mateScore);
		  request.setAttribute("tripList", tripList);
		  rd.forward(request, response);
		  

	}

}
