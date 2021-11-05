package com.actibuddy.activity.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.LocationAndActivityDTO;
import com.actibuddy.activity.service.ActivityService;
import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.service.MateFindService;

@WebServlet("/activity/location")
public class ActivityLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 쿼리스트링으로 넘겨받은 지역정보 받아오기 */
		String locationName = request.getParameter("locationName"); 
		System.out.println("locationName 확인 : " + locationName);
		
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
		
		/* 지역정보를 map에 넣어 해당 지역에 대한 액티비티 조회용으로 사용 */
		Map<String,Object> resultMap = new HashMap<>();	
		resultMap.put("locationName", locationName);
		
		ActivityService activityService = new ActivityService();
		/* 해당 지역의 액티비티 총 갯수를 구하는 메소드 */
		int totalCount = activityService.totalActivityCount(locationName);
		System.out.println(totalCount);
		
		int limit = 9;
		int buttonAmount = 5;
		
		/* 페이징을 위한 객체 생성 */
		SelectCriteria selectCriteria = null;
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount,null,null);
		/* 페이징에 필요한 startRow와 endRow를 map에 담아 매개변수로 넘겨줌 */
		resultMap.put("startRow", selectCriteria.getStartRow());
		resultMap.put("endRow", selectCriteria.getEndRow());
		
		/* 해당 지역에 대한 액티비티의 정보를 조회 */
		LocationAndActivityDTO location = activityService.selectActivity(resultMap);
		System.out.println("location 확인 :" + location);
		
		/* 해당 지역에 방문하기 좋은 시기에 대한 내용 출력 */
		String[] month = location.getVisitMonth().split(",");
		String[] name = location.getVisitName().split(",");
		
		for(String mo : month) {
			System.out.println(mo);
		}
		
		for(String na : name) {
			System.out.println(na);
		}
		
		/* 방문하기 좋은 시기를 서블릿으로 넘겨준다 */
		Map<String, String> map = new HashMap<>();
		for(int i = 0; i < month.length; i++) {
			map.put("vistis", "<header id=\"visitHeader\">" + month[i] + "</header> <p id=\"visitBody\">" + name[i] +"</p>");
		}
		
		/* 지역 액티비티 추천 정보 조회*/
		LocationAndActivityDTO randomList = activityService.selectRandomList(locationName);
		
		MateFindService findService = new MateFindService();
		List<MateFindDTO> hurryFindList = findService.selectHurryFind();
		
		String path = "";
		if(location != null){
			path = "/WEB-INF/views/activity/activity.jsp";
			request.setAttribute("locationActivity", location);
			request.setAttribute("selectCriteria", selectCriteria);
			request.setAttribute("vistis", map);
			request.setAttribute("randomList", randomList);
			request.setAttribute("hurryFindList", hurryFindList);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
