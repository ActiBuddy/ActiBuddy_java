package com.actibuddy.activity.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

@WebServlet("/activity/pay2")
public class ActiPayServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("pay2 서블릿입니다 ======================================");
		System.out.println("결제할 액티비티 이름 : " + request.getParameter("actiName"));
		System.out.println("결제할 액티비티 번호 : " + request.getParameter("actiNum"));
		System.out.println("결제할 액티비티 사진 : " + request.getParameter("image"));
		System.out.println("결제할 액티비티 날짜 : " + request.getParameter("date"));
		System.out.println("결제할 액티비티 옵션 : " + request.getParameter("option"));
		System.out.println("결제할 액티비티 인원 : " + request.getParameter("person"));
		System.out.println("결제할 액티비티 가격 : " + request.getParameter("price"));
		System.out.println("결제할 장바구니 번호 : " + request.getParameter("cartNum"));
		
		Map<String, String> payInfo = new HashMap<>();
		payInfo.put("actiName", request.getParameter("actiName"));
		payInfo.put("actiNum", request.getParameter("actiNum"));
		payInfo.put("image", request.getParameter("image"));
		payInfo.put("date", request.getParameter("date"));
		payInfo.put("option", request.getParameter("option"));
		payInfo.put("person", request.getParameter("person"));
		payInfo.put("price", request.getParameter("price"));
		payInfo.put("cartNum", request.getParameter("cartNum"));
		
		String path = "";

		if(payInfo != null) {
			path = "/WEB-INF/views/pay/pay2.jsp";
			request.setAttribute("payInfo", payInfo);
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
		
		
	    
	}
	

}
