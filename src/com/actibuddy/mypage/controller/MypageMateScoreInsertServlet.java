package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateFindAndApplyDTO;
import com.actibuddy.mate.model.dto.MateFindApplyDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.service.MateFindService;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.MypageMateScoreDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/mypage/mate/score/insert")
public class MypageMateScoreInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/* 파라미터로 받아온 값 가져오기 */
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		String title = request.getParameter("title");
		String text = request.getParameter("checkScore");
	    String mateId = request.getParameter("mateId");
		String star = request.getParameter("rating");
		String plus = request.getParameter("elseWrite");
		String findNo = request.getParameter("findNo");
		
		System.out.println("평가할 아이디 : " + userId);
		System.out.println("글 제목 : " + title);
		System.out.println("글 내용 : " + text);
		System.out.println("평가받을 아이디 : " + mateId);
		System.out.println("별점 : " + star);
		System.out.println("추가 내용 : " + plus);
		System.out.println("구인글 번호 : " + findNo);
		
		MypageMateScoreDTO scoreDTO = new MypageMateScoreDTO();
		scoreDTO.setScoredId(mateId);
		scoreDTO.setUserId(userId);
		scoreDTO.setScoreTitle(title);
		scoreDTO.setScoreCon(text);
		scoreDTO.setScoreStar(star);
		scoreDTO.setPlusScore(plus);
		
		MypageService mypageService = new MypageService();
		/* 메이트 평가 등록하기 */
		int result = mypageService.insertScore(scoreDTO);
		System.out.println("메이트 평가 등록 성공 여부 : " + result);
		
	    if(result > 0) {
			
	    	/* 새롭게 추가된 평가글의 번호 조회 */
			scoreDTO = mypageService.selectScoreNum();
			System.out.println("추가된 메이트 평가 글 번호 : " + scoreDTO.getScoreNum());
			
			/* 사용자가 참여한 메이팅의 신청 이력 번호 조회 */
			MateFindApplyDTO appDTO = new MateFindApplyDTO();
			appDTO.setAppliedId(userId);
			appDTO.setNum(findNo);
			System.out.println("참여 유저 아이디 : " + appDTO.getAppliedId());
			System.out.println("참여 구인글 번호 : " + appDTO.getNum());
			MateFindApplyDTO newAppDTO = new MateFindApplyDTO();
			newAppDTO = mypageService.selectAppNo(appDTO);
			System.out.println("참여한 메이팅의 신청 이력 번호 : " + newAppDTO.getApplyNum());
			
			String sNum = scoreDTO.getScoreNum();
			String aNum = newAppDTO.getApplyNum();
			
			Map<String, String> hisNum = new HashMap<>();
			hisNum.put("sNum", sNum);
			hisNum.put("aNum", aNum);
			
			/* 조회한 정보들로 평가 이력 테이블에 이력 등록 */
			int result2 = mypageService.insertScoreHis(hisNum);
			System.out.println("메이트 평가 이력 테이블 등록 여부 조회 : " + result2);
			
			if(result2 > 0) {
				
				/* 다시 메이트 내역으로 되돌아갈 때 필요한 정보들 조회 */
				List<MateFindAndApplyDTO> mtApplyList2 = mypageService.selectMtApply(userId);
				
				System.out.println(mtApplyList2);
				request.setAttribute("mtApplyList2", mtApplyList2);
				
				MateFindService mateFindService = new MateFindService();
				List<MateFindDTO> mtApply = mateFindService.selectMtApplyHis(userId);
				for(MateFindDTO mf : mtApply) {
					System.out.println(mf);
				}
				
				String path = "";

				if(mtApply != null) {
					path = "/WEB-INF/views/mypage/mateList.jsp";
					request.setAttribute("mtApply", mtApply);
					
				} else {
					path = "/WEB-INF/views/common/actiFail.jsp";
				}

				request.getRequestDispatcher(path).forward(request, response);
				
			} else {
				System.out.println("메이트 평가 이력 등록 실패!");
			}
			
	    } else {
	    	System.out.println("메이트 평가 등록 실패!");
	    }
		
	}

}
