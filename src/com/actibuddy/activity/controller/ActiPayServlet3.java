package com.actibuddy.activity.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actibuddy.activity.model.dto.PaymentDTO;
import com.actibuddy.activity.service.ActivityService;
import com.actibuddy.mypage.model.dto.PayHisDTO;
import com.actibuddy.mypage.model.dto.PayResultDTO;
import com.actibuddy.mypage.service.MypageService;

@WebServlet("/activity/pay3")
public class ActiPayServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cartNum = request.getParameter("cartNum");
		System.out.println("3번째 서블릿에서 넘어온 카트번호 확인 : " + cartNum);
		
		/* 1. 결제 고유 번호와 결제 일시 등록하기 */
		ActivityService activityService = new ActivityService();
		int payInsert = activityService.insertPayment();
		System.out.println("결제 내역 등록 결과 : " + payInsert);
		
		if(payInsert > 0) {
			
			/* 2. 가장 최근의 결제 정보 1건 가져오기 */
	        PaymentDTO payment = activityService.selectPayment();
	        System.out.println("최근 결제 내역 1건 조회 결과 : " + payment);
	        
	        /* 3. 파라미터로 넘어온 카트 번호와 결제 고유 번호를 이용해서 이력테이블 등록하기 */
			PayHisDTO payHis = new PayHisDTO();
			payHis.setCartNum(request.getParameter("cartNum"));
			payHis.setPayNum(payment.getPayNum());
			
			MypageService mypageService = new MypageService();
			int payHisInsert = mypageService.insertPayHis(payHis);
			System.out.println("결제 이력 등록 결과 : " + payHisInsert);
			
			if(payHisInsert > 0) {
				
				/* 4. 결제 확인 페이지에서 보여줄 정보들 카트 번호로 조회해서 가져오기 */
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
					path = "/WEB-INF/views/pay/pay3.jsp";
					request.setAttribute("payInfo", payInfo);
					
				} else {
					path = "/WEB-INF/views/common/actiFail.jsp";
				}

				request.getRequestDispatcher(path).forward(request, response);
				
			} else {
				System.out.println("결제 이력 등록 실패!!");
			}
			
		} else {
			System.out.println("결제 내역 등록 실패!");
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
