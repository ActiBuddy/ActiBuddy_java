package com.actibuddy.manager.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.manager.service.ManagerService;
import com.actibuddy.manager.model.dto.ManagerDTO;

@WebServlet("/manager/warnmember")
public class ManagerWarnMemberServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ManagerService managerService = new ManagerService();
		
		List<ManagerDTO> managerList = managerService.selectWarnMember();		
		
		System.out.println(managerList);
		request.setAttribute("memberList", managerList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerWarnMember.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
