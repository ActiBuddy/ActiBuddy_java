package com.actibuddy.mypage.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/trip/review/write")
public class MypageTripReviewWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		MypageService mypageService = new MypageService();
		CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(userId);
		
		System.out.println("결과 : " + tripList);
		
		request.setAttribute("tripList", tripList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/tripReviewWrite.jsp");
		rd.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		String actiNum = request.getParameter("hdActivityNum");
		String chooseOption = request.getParameter("hdChooseOption");
		String title = request.getParameter("title");
//		double reviewStar = Double.parseDouble(request.getParameter("rating"));
		String content = request.getParameter("reviewCon");
		
		ActiReviewDTO requestActiReview = new ActiReviewDTO();
		requestActiReview.setActiNum(actiNum);
		requestActiReview.setWriterId(userId);
		requestActiReview.setChooseOption(chooseOption);
		requestActiReview.setTitle(title);
//		requestActiReview.setReviewStar(reviewStar);
		requestActiReview.setContent(content);
		
		
		System.out.println("아이디 : " + userId);
		System.out.println("액티 번호 : " + actiNum);
		System.out.println("선택옵션 : " + chooseOption);
		System.out.println("제목 : " + title);
//		System.out.println("별점 : " + reviewStar);
		System.out.println("내용 : " + content);
		
		
		MypageService mypageService = new MypageService();
		CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(userId);
		
		request.setAttribute("tripList", tripList);
		
		System.out.println(tripList);
		
		
		// 사진 업로드
		if(ServletFileUpload.isMultipartContent(request)) {
			
		
		String rootLocation = getServletContext().getRealPath("/");
		int maxFileSize = 1024 * 1024 * 10;
		String encodingType = "UTF-8";
		
		System.out.println("파일 저장 ROOT 경로 : " + rootLocation);
		System.out.println("최대 업로드 파일 용량 : " + maxFileSize);
		System.out.println("인코딩 방식 : " + encodingType);
		
		// 4. 파일경로
		String fileUploadDirectory = rootLocation + "/resources/image/tripReview/";
		File directory = new File(fileUploadDirectory);
		
		/* 파일 저장경로가 존재하지 않는 경우 디렉토리를 생성한다. */
		if(!directory.exists()) {
			/* 폴더를 한 개만 생성할거면 mkdir, 상위 폴더도 존재하지 않으면 한 번에 생성하란 의미로 mkdirs를 이용한다. */
			System.out.println("폴더 생성 : " + directory.mkdirs());
		}
		
		
		
		
		}
	}
}
