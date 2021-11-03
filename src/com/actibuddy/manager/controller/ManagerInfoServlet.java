package com.actibuddy.manager.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.manager.model.dto.ManagerPartDTO;
import com.actibuddy.manager.service.ManagerService;

@WebServlet("/manager/managerinfo")
public class ManagerInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String managerId = request.getParameter("managerId");
	
	ManagerPartDTO managerpart = new ManagerPartDTO();
	
	managerpart.setUserId(managerId);
	
	ManagerService managerService = new ManagerService();
	
	ManagerPartDTO managerinfo = managerService.managerinfo(managerpart);
	
	request.setAttribute("managerinfo", managerinfo);
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerInfo.jsp");
	rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String mamPart = request.getParameter("managerPart");
	String userId = request.getParameter("userId");
	
	ManagerPartDTO managerpart = new ManagerPartDTO();
	
	managerpart.setManPart(mamPart);
	managerpart.setUserId(userId);
	
	ManagerService managerService = new ManagerService();
	
	int result = managerService.managerpartChange(managerpart);
	
	List<ManagerDTO> managerList = managerService.selectManagerMember();		
	
	System.out.println(managerList);
	
	request.setAttribute("memberList", managerList);
	
	
	if(result > 0) {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerManager.jsp");
		rd.forward(request, response);
		
	} else {
		
	}
	
	}
}
