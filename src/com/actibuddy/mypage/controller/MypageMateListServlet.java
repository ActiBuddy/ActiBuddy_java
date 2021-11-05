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

import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.service.MateFindService;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.MTFindApplyDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/mypage/matelist")
public class MypageMateListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);

		MypageService mypageService = new MypageService();
		List<MTFindApplyDTO> mtApplyList2 = mypageService.selectMtApply(userId);
		
		System.out.println(mtApplyList2);
		request.setAttribute("mtApplyList2", mtApplyList2);
		

		/* 사용자가 신청한 메이팅 구인글 조회하기 */
		MateFindService mateFindService = new MateFindService();
		List<MateFindDTO> mtApply = mateFindService.selectMtApplyHis(userId);
		for(MateFindDTO mf : mtApply) {
			System.out.println(mf);
		}
		request.setAttribute("mtApply", mtApply);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/mateList.jsp");
		rd.forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 신청자아이디 함께 넘겨서....????? 어떻게 아이디 하나값만 넘기지..? 수락 or 거절 버튼으로 MT_APPLY_HIS에  MT_FIND_YN을 YN 업데이트
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		  
		
		// 마감하기 버튼 누르면 MT_FIND '신청마감'으로 업데이트
		String mtFindNum = request.getParameter("findNum");
		System.out.println("마감하기 위한 메이트 번호 : " + mtFindNum);

		int result = new MypageService().updateMtFindNum(mtFindNum);
		System.out.println("마감 업뎃 성공? : " + result);
		
		// 수락 / 거절 버튼 누르면 업데이트
		String yes = request.getParameter("yes");
		String no = request.getParameter("no");
		// 신청자 아이디 갖고오고
		String appliedId = request.getParameter("appliedId");
		System.out.println("신청자 아이디 : " + appliedId);
		System.out.println("수락 누르면 : " + yes);
		System.out.println("거절 누르면 : " + no);
		
		
		Map<String, String> updateState = new HashMap<>();
		updateState.put("mtFindNum",mtFindNum);
		updateState.put("appliedId",appliedId);
		
		if(yes != null) {
			
			if(yes.equals("Y") ) { // 수락버튼 누르면
				int result2 = new MypageService().updateFindStateYes(updateState);
				System.out.println("Y업데이트 성공..: " + result2);
			}
		}
		
		if(no != null) {
			
			if(no.equals("N") ) { // 거절버튼 누르면
				int result3 = new MypageService().updateFindStateNo(updateState);
				System.out.println("X업데이트 성공..: " + result3);
			}
		}

		
		MateFindService mateFindService = new MateFindService();
		List<MateFindDTO> mtApply = mateFindService.selectMtApplyHis(userId);
		
		
		MypageService mypageService = new MypageService();
		List<MTFindApplyDTO> mtApplyList2 = mypageService.selectMtApply(userId);
		
		RequestDispatcher rdd = request.getRequestDispatcher("/WEB-INF/views/mypage/mateList.jsp");
		request.setAttribute("mtApplyList2", mtApplyList2);
		request.setAttribute("mtApply", mtApply);
		rdd.forward(request, response);
		

	}

}
