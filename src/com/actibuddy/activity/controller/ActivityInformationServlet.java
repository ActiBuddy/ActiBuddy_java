package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityInfoDTO;
import com.actibuddy.activity.service.ActivityService;
import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;

@WebServlet("/activity/information")
public class ActivityInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 클릭된 액티비티 이름을 이용해 인포 페이지에 필요한 정보들 가져오기 */
		String actiName = request.getParameter("actiName");
		System.out.println("주소 표기 상태 : " + actiName);
		
		ActivityService activityService = new ActivityService();
		ActivityInfoDTO activity = new ActivityInfoDTO();
		
		Map<String, String> actiMap = new HashMap<>();
		
		actiMap.put("actiName", actiName);
		activity = activityService.selectActivityInfo(actiMap);
// 		System.out.println("액티비티 리스트 조회 : " + activity.getActivityList());
//		System.out.println(activity.getConditionList());
//		System.out.println(activity.getLocationList());
//		System.out.println(activity.getOptionList());
//  	System.out.println(activity.getReviewList());
//		System.out.println(activity.getTypeList());
		
		System.out.println("=====================================================");
		
		/* 가져온 액티비티 정보의 위치 컬럼에서 위도, 경도 끊어내기 */
		String[] map = activity.getActivityList().get(0).getLocation().split(",");
//		for(String m : map) {
//			System.out.println(m);
//		}
		
		System.out.println("=====================================================");
		
		/* 인포 페이지 하단의 추천 액티비티 가져오기 */
		int viewUpdate = activityService.updateViews(actiName);
		List<ActivityDTO> recActivity = new ArrayList<>();
		recActivity = activityService.selectRecommendActivity(actiName);
//		for(ActivityDTO acti : recActivity) {
//			System.out.println(acti);
//		}
		
	    System.out.println("=====================================================");
	    
	    /* ======== 페이징 처리 ========*/
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		// 현재페이지가 설정된 경우 페이지 번호는 변경된다.
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		// 페이지 번호가 0보다 작아도 1페이지
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		System.out.println(currentPage);
		System.out.println(pageNo);
		
		/* ======= 공통 처리 ======== */
		// 전체 게시물 수 필요
		// 검색 조건이 있는 경우 검색 조건에 맞는 전체 게시물 수 조회
		int totalCount = activityService.selectActiReviewTotalCount(actiName);
		
		System.out.println("totalBoardCount : " + totalCount);
		
		int limit = 2;
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = null;
		
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		
		System.out.println("criteria : " + selectCriteria);
		
		System.out.println("=======================================================");
		
		/* 후기 정렬이 동작했을 경우 정렬 기준(문자열)을 담을 맵 생성 */
		Map<String, Object> reviewMap = new HashMap<>();
		String sort = request.getParameter("sort");
		System.out.println(sort);
		
		reviewMap.put("actiName", actiName);
		reviewMap.put("selectCriteria", selectCriteria);
		
		if(sort != null) {
			/* 정렬값이 존재하면 리뷰맵에 같이 담아 보내주기 */
			reviewMap.put("sort", sort);
		};
		
		List<ActiReviewDTO> reviewList = activityService.selectReviewList(reviewMap);
		// 전달 인자를 액티비티 이름을 담은 맵 객체로 다시 보내야한다 근데 ㅈㄴㅁ피곤해서 잘란다
		
		System.out.println("reviewList : " + reviewList);
		System.out.println("======================================================");
		
		String path = "";

		if(activity != null) {
			path = "/WEB-INF/views/activity/activityInfo.jsp";
			request.setAttribute("activity", activity);
			request.setAttribute("recActivity" , recActivity);
			request.setAttribute("map", map);
			request.setAttribute("reviewList", reviewList);
			request.setAttribute("selectCriteria", selectCriteria);
			request.setAttribute("sort", sort);
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

