package com.actibuddy.manager.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

@WebServlet("/manager/main")
public class ManagerMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManagerMainServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		MemberService memberService = new MemberService();
		
		List<MemberDTO> memberList = memberService.selectAllMember();		
		
//		for(int i = 0; i < memberList.size(); i++) {
//			System.out.println("memberList : " +i+ memberList+"["+i+"]");
//		}
		
		System.out.println(memberList);
		request.setAttribute("memberList", memberList);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/manager/managerMember.jsp");
		rd.forward(request, response);
	
	}


}
