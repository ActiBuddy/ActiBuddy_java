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
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

/**
 * Servlet implementation class ManagerRegistServlet
 */
@WebServlet("/manager/regist")
public class ManagerRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerregist.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String mamPart = request.getParameter("managerPart");
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setUserId(userId);
		requestMember.setPwd(pwd);
		
		ManagerPartDTO managerpart = new ManagerPartDTO();
		
		managerpart.setManPart(mamPart);
		managerpart.setUserId(userId);
		
		ManagerService managerService = new ManagerService();
		
		int result = managerService.registManager(requestMember, managerpart); // 아이디 등록, 매니저 파트 등록
		
		if(result > 0) {
			List<ManagerDTO> managerList = managerService.selectManagerMember();		
			
			request.setAttribute("memberList", managerList);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerManager.jsp");
			rd.forward(request, response);
		} else {
			
		}
		
		
	}

}
