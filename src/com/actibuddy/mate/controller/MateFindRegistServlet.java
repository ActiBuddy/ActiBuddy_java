package com.actibuddy.mate.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.service.MateFindService;

@WebServlet("/mate/find/regist")
public class MateFindRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mate/mateFindWriting.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		System.out.println("아이디 체크 : " + userId);
		String img = request.getParameter("acti");
		System.out.println("이미지 체크: " + img);
		String location = request.getParameter("location");
		System.out.println("지역 체크 : " + location);
		String gender = request.getParameter("gender");
		System.out.println("성별 체크 " + gender);
		System.out.println("날짜 변환 체크 : " + java.sql.Date.valueOf(request.getParameter("date")));
		
		/* date 타입 변환 */

			MateFindDTO requestFind = new MateFindDTO();
			requestFind.setImgName(request.getParameter("acti"));
			requestFind.setLocation(request.getParameter("location"));
			requestFind.setTitle(request.getParameter("title"));
			requestFind.setPeople(Integer.parseInt(request.getParameter("people")));
			requestFind.setGender(request.getParameter("gender"));
			requestFind.setAge(Integer.parseInt(request.getParameter("age")));
			requestFind.setContent(request.getParameter("con"));
			requestFind.setUserId(request.getParameter("userId"));
			requestFind.setDeadline(java.sql.Date.valueOf(request.getParameter("date")));
				
			MateFindService findService = new MateFindService();
			int result = findService.registFind(requestFind);
			
			String path = "";
			if(result > 0) {
				
				path = "/acti/mate/main";
				response.sendRedirect(path);
				
			} else {
				
				path = "/WEB-INF/views/common/failed.jsp";
				
				request.setAttribute("message", "구인글 등록 실패!");
				
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}	
			

		
	}

}
