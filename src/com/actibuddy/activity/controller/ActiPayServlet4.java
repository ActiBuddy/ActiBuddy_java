package com.actibuddy.activity.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.mypage.model.dto.PayResultDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/activity/pay4")
public class ActiPayServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cartNum = request.getParameter("cartNum");
		System.out.println("3번째 서블릿에서 넘어온 카트번호 확인 : " + cartNum);
		
		/* 결제 실패 페이지에서 보여줄 정보들 카트 번호로 조회해서 가져오기 */
		MypageService mypageService = new MypageService();
		PayResultDTO payResult = mypageService.selectPayResult(cartNum);
		
		/* 결제 실패 일시 생성 */
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		
		String payDate = format.format(time);
		
		/* 가져온 정보들 맵에 담아주기 */
		Map<String, Object> payInfo = new HashMap<>();
		
		payInfo.put("actiName", payResult.getActiName());
		payInfo.put("image", payResult.getImg());
		payInfo.put("date", payResult.getChooseDate());
		payInfo.put("option", payResult.getChooseOption());
		payInfo.put("person", payResult.getTotalPerson());
		payInfo.put("price", payResult.getTotalPrice());
		payInfo.put("cartNum", payResult.getCartNum());
		payInfo.put("payDate", payDate);
		
		String path = "";

		if(payInfo != null) {
			path = "/WEB-INF/views/pay/pay4.jsp";
			request.setAttribute("payInfo", payInfo);
			
		} else {
			path = "/WEB-INF/views/common/actiFail.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
