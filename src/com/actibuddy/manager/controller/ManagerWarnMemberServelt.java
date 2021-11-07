package com.actibuddy.manager.controller;

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

import com.actibuddy.manager.service.ManagerService;
import com.actibuddy.common.paging.Pagenation;
import com.actibuddy.common.paging.SelectCriteria;
import com.actibuddy.manager.model.dto.ManagerDTO;

@WebServlet("/manager/warnmember")
public class ManagerWarnMemberServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		if(pageNo <= 0) {
			pageNo = 1;
		}

		System.out.println(currentPage);
		System.out.println(pageNo);

		String searchCondition = request.getParameter("location");
		String searchValue = request.getParameter("searchValue");
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);

		ManagerService managerService = new ManagerService();
		
		int totalCount = managerService.warnmemberTotalCount(searchMap);
				
		
		int limit = 10;
		int buttonAmount = 5;

		SelectCriteria selectCriteria = null;

		if(searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		List<ManagerDTO> managerList = managerService.selectWarnMember(selectCriteria);		
		
		request.setAttribute("managerList", managerList);
		request.setAttribute("selectCriteria", selectCriteria);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerWarnMember.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
