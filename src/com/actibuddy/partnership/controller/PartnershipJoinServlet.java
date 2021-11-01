package com.actibuddy.partnership.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;
import com.actibuddy.partnership.model.DTO.PartnerDTO;
import com.actibuddy.partnership.service.PartnerService;

@WebServlet("/partner/join")
public class PartnershipJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		
		request.setAttribute("userId", userId);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/partnership/partnershipjoin.jsp");
		rd.forward(request, response);
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	
		String ownerTitle = request.getParameter("ownerTitle");
		String ownerNum = request.getParameter("ownerNum");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String userId = request.getParameter("userId");

		System.out.println(userId);
		
		PartnerDTO partnerDTO = new PartnerDTO();
	
		partnerDTO.setUserId(userId);
		partnerDTO.setOwnerTitle(ownerTitle);
		partnerDTO.setOwnerNum(ownerNum);
		partnerDTO.setStartDate(startDate);
		partnerDTO.setEndDate(endDate);
		
		System.out.println(partnerDTO);
		
		PartnerService partnerService = new PartnerService();
	
		MemberDTO partnerStatus = new MemberDTO();
		partnerStatus.setUserId(userId);
//		partnerStatus.setMemType("U");
		
		
		System.out.println(partnerStatus);
		
		int result = partnerService.joinPartner(partnerDTO,partnerStatus);
		
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			
				out.println("<script>alert('success'); history.go(-1);</script>");
			}else {
				out.println("<script>alert('sorry'); history.go(-1);</script>");
			}
//		}
	}
}
