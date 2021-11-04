package com.actibuddy.mate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mate.model.dto.MateCommentDTO;
import com.actibuddy.mate.model.dto.MateFindDTO;
import com.actibuddy.mate.model.service.MateFindService;

@WebServlet("/mate/comment")
public class MateFindComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		String text = request.getParameter("text");
		String userId = request.getParameter("userId");
		System.out.println("num 확인 : " + num);
		System.out.println("text 확인 : " + text);
		System.out.println("userId 확인 : " + userId);
		
		Map<String,String> map = new HashMap<>();
		map.put("num", num);
		map.put("text", text);
		map.put("userId", userId);
		
		MateFindService mateService = new MateFindService();
		int result = mateService.insertComment(map);
		
		MateFindService findService = new MateFindService();
		MateFindDTO find = findService.selectFindInfo(num);
		System.out.println(find);
		List<MateCommentDTO> comment = findService.selectComment(num);
		System.out.println(comment);
		
		String path = "";
		if(result > 0) {
			path="/WEB-INF/views/mate/mateFindView.jsp";
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
			request.setAttribute("success", "success");
			request.setAttribute("comment", comment);
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "댓글 입력 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
