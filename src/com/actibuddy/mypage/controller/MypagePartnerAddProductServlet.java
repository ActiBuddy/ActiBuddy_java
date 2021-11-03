package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/partner/add")
public class MypagePartnerAddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/addproduct.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);

		String name = request.getParameter("Actiname");
		String location = request.getParameter("location");
		String price = request.getParameter("price");
		
		
//		private String code;
//		private String name;
//		private String location;
//		private int price;
//		private Date StartDate;
//		private Date EndDate;
//		private String tip;
//		private String image;
//		private String image2;
//		private String image3;
//		private String loactionCode;
//		private String activitTypeCode;
//		private String userId;
//		private int views;
//		
		
	}

}
