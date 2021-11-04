package com.actibuddy.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.member.model.service.MemberService;

@WebServlet("/change/pwd")
public class MemberChangePwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login/changepwd.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		System.out.println(userId);
		System.out.println(pwd);
		System.out.println(pwd2);
		
		Map<String,String> map = new HashMap<>();
		map.put("userId", userId);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String value = passwordEncoder.encode(pwd);
		map.put("pwd", value);
		
		MemberService memberService = new MemberService();
		
		String path = "";
		if(pwd.equals(pwd2)) {
			path="/WEB-INF/views/login/changepwd.jsp";
			int result = memberService.updatePwd(map);
			request.setAttribute("success", "success");
			
		} else {
			path="/WEB-INF/views/login/changepwd.jsp";
			request.setAttribute("result", "result");
		}
		 
		request.getRequestDispatcher(path).forward(request, response);
	}

}
