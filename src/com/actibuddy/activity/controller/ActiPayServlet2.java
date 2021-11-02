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
	
		System.out.println("결제할 액티비티 이름 : " + request.getParameter("actiName"));
		System.out.println("결제할 액티비티 번호 : " + request.getParameter("actiNum"));
		System.out.println("결제할 액티비티 사진 : " + request.getParameter("image"));
		System.out.println("결제할 액티비티 날짜 : " + request.getParameter("date"));
		System.out.println("결제할 액티비티 인원 : " + request.getParameter("person"));
		System.out.println("결제할 액티비티 가격 : " + request.getParameter("price"));
		System.out.println("결제할 유저 아이디 : " + request.getParameter("userId"));
		
		request.getRequestDispatcher("/WEB-INF/views/pay/pay2.jsp").forward(request, response);
		
		
// 		Integer person = Integer.parseInt(request.getParameter("person")); 
//		Integer price = Integer.parseInt(request.getParameter("price")); 
//	    int taxFree = (int) (price - (price * 0.1));
//	    Integer tax_free_amount = new Integer(taxFree);
//		
//		
//	    URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
//	    HttpURLConnection conn = (HttpURLConnection)url.openConnection();
//	    conn.setRequestMethod("POST");
//	    conn.setRequestProperty("Authorization", "KakaoAK b67d9351c8c65daff4a8e6e1359c582e");
//	    conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//	    conn.setDoInput(true);
//	    conn.setDoOutput(true);
//	    
//	    String partner_order_id = null;
//	    String partner_user_id = null;
//	    
//	    
//	    Map<String, Object> params = new HashMap<>();
//	    params.put("cid", "TC0ONETIME");
//		params.put("partner_order_id", partner_order_id);
//		params.put("partner_user_id", partner_user_id);
//	    params.put("item_name", request.getParameter("actiName"));
//	    params.put("item_code", request.getParameter("actiNum"));
//	    params.put("quantity", person);
//	    params.put("total_amount", price);
//	    params.put("tax_free_amount", tax_free_amount);
//	    params.put("approval_url", "http://localhost:8888/WEB-INF/views/pay/pay2.jsp");
//	    params.put("cancel_url", "http://localhost:8888/WEB-INF/views/pay/cancle.jsp");
//	    params.put("fail_url", "http://localhost:8888/WEB-INF/views/pay/fail.jsp");
//	    
//	    String string_params = new String();
//	    for(Map.Entry<String, Object> elem : params.entrySet()) {
//	    	string_params += (elem.getKey() + "=" + elem.getValue() + "&");
//	    }
//	    
//	    conn.getOutputStream().write(string_params.getBytes());
//	    
//	    BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//	    
//	    JSONParser parser = new JSONParser();
//	    try {
//			JSONObject obj = (JSONObject)parser.parse(in);
//			
//			String successUrl = (String)obj.get("/acti/activity/pay3");
//			
//			request.getRequestDispatcher(successUrl).forward(request, response);
//		} catch (IOException | ParseException e) {
//			e.printStackTrace();
//		}
	    
	}
	

}
