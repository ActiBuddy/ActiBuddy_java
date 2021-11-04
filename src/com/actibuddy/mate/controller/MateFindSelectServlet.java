package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateCommentDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.service.MateFindService;

@WebServlet("/mate/find/select")
public class MateFindSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String num = request.getParameter("num");
		System.out.println("게시글 번호 : " + num);
	
		MateFindService findService = new MateFindService();
		MateFindDTO find = findService.selectFindInfo(num);
		List<MateCommentDTO> comment = findService.selectComment(num);
		System.out.println(comment);
		
		String path = "";
		if(find != null) {
			path = "/WEB-INF/views/mate/mateFindView.jsp";
			request.setAttribute("find", find);
			request.setAttribute("num", find.getNum());
			request.setAttribute("title", find.getTitle());
			request.setAttribute("userId", find.getUserId());
			request.setAttribute("content", find.getContent());
			request.setAttribute("date", find.getDate());
			request.setAttribute("location", find.getLocation());
			request.setAttribute("imgName", find.getImgName());
			request.setAttribute("gender", find.getGender());
			request.setAttribute("people", find.getPeople());
			request.setAttribute("age", find.getAge());
			request.setAttribute("deadline", find.getDeadline());
			request.setAttribute("state", find.getState());
			request.setAttribute("count", find.getCount());
			request.setAttribute("comment", comment);
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "메이트 찾기 상세페이지 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
}
