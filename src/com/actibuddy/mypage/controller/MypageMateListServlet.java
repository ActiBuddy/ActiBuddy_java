package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateFindAndApplyDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/mypage/matelist")
public class MypageMateListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);

		MypageService mypageService = new MypageService();
		List<MateFindAndApplyDTO> mtApplyList2 = mypageService.selectMtApply(userId);
		
		
		System.out.println(mtApplyList2);
		request.setAttribute("mtApplyList2", mtApplyList2);

		/*
		 * 사용자가 신청한 메이팅 구인글 조회하기 MateFindService mateFindService = new
		 * MateFindService(); List<MateFindApplyDTO> mtApplyList =
		 * mateFindService.selectMtApplyHis(userId);
		 * 
		 * for(MateFindApplyDTO mt : mtApplyList ) { System.out.println(mt); }
		 */

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/mateList.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 신청자아이디 함께 넘겨서....????? 어떻게 아이디 하나값만 넘기지..? 수락 or 거절 버튼으로 MT_APPLY_HIS에  MT_FIND_YN을 YN 업데이트
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		String appliedId = request.getParameter("appliedId");
		System.out.println("신청자 아이디 : " + appliedId);
		
		
		// 마감하기 버튼 누르면 MT_FIND 신청마감으로 업데이트
		String mtFindNum = request.getParameter("mtFindNum");
		System.out.println("마감하기 위한 메이트 번호 : " + mtFindNum);
		
		MateFindDTO requestMtFindNum = new MateFindDTO();
		requestMtFindNum.setNum("num");
		
		int result = new MypageService().updateMtFindNum(requestMtFindNum);
		
		
		
		
		

	}

}
