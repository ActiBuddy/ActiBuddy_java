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
import com.actibuddy.manager.service.ManagerService;
import com.actibuddy.partnership.model.DTO.PartnerDTO;

@WebServlet("/manager/partnermember")
public class ManagerPartnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ManagerService managerService = new ManagerService();

		List<ManagerDTO> managerList = managerService.selectPartnerMember();		
		
		System.out.println(managerList);
		
		
		
		
		request.setAttribute("managerList", managerList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerPartner.jsp");
		rd.forward(request, response);
		
	}
	
	
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
