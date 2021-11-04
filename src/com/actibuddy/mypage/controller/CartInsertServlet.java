package com.actibuddy.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mypage.model.dto.CartDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/cart/insert")
public class CartInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String code = request.getParameter("actiNum");
		String userId = request.getParameter("userId");
		String option = request.getParameter("chooseOption");
		int person = Integer.parseInt(request.getParameter("totalPerson"));
		int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));
		java.sql.Date date = java.sql.Date.valueOf(request.getParameter("ChooseDate"));
		
		System.out.println("선택 액티비티 번호 : " + code);
		System.out.println("유저 아이디 : " + userId);
		System.out.println("선택 옵션 : " + option);
		System.out.println("선택 인원 : " + person);
		System.out.println("총 가격 : " + totalPrice);
		System.out.println("선택 날짜 : " + date);
		
		CartDTO newCart = new CartDTO();
		newCart.setActiNum(code);
		newCart.setUserId(userId);
		newCart.setChooseOption(option);
		newCart.setTotalPerson(person);
		newCart.setTotalPrice(totalPrice);
		newCart.setChooseDate(date);
		
		MypageService mypageService = new MypageService();
		int result = mypageService.insertCart(newCart);
		
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		out.close();
		
	
		
	}

}
