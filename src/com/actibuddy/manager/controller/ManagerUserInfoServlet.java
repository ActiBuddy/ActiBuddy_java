package com.actibuddy.manager.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.manager.model.dto.ManagerDTO;
import com.actibuddy.manager.service.ManagerService;
import com.actibuddy.partnership.model.DTO.PartnerDTO;
import com.actibuddy.partnership.service.PartnerService;

/**
 * Servlet implementation class ManagerUserInfoServlet
 */
@WebServlet("/manager/userInfo")
public class ManagerUserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userId = request.getParameter("userId");
		
		ManagerDTO managerList = new ManagerDTO();
		
		managerList.setUserId(userId);
		
		ManagerService managerService = new ManagerService();
		
		ManagerDTO userinfo = managerService.userinfo(managerList);
		
		request.setAttribute("userinfo", userinfo);
		
		
		
		PartnerService partnerService = new PartnerService();
		
		PartnerDTO partnerinfo = new PartnerDTO();
		
		partnerinfo.setUserId(userId);
		
		PartnerDTO partnerdetail = partnerService.partnershipinfo(partnerinfo);
		
		System.out.println(partnerdetail);
		
		request.setAttribute("partnerdetail", partnerdetail);

		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerUserInfo.jsp");
		rd.forward(request, response);

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
