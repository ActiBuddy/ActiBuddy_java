package com.actibuddy.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.actibuddy.activity.model.dto.ActiReviewDTO;
import com.actibuddy.activity.service.ActivityService;
import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.CartAndMemberAndPayHIsDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/trip/review/write")
public class MypageTripReviewWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		System.out.println("아이디 : " + userId);
		
		String actiName = request.getParameter("actiName");
		System.out.println("액티비티 이름 : " + actiName);
		
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("actiName", actiName);
		
		MypageService mypageService = new MypageService();
		CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(map);
		
		System.out.println("결과 : " + tripList);
		
		request.setAttribute("tripList", tripList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/tripReviewWrite.jsp");
		rd.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
		
		String rootLocation = getServletContext().getRealPath("/"); // 최상위폴더 위치
		int maxFileSize = 1024 * 1024 * 10; // 파일 용량선언
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
		
		// 파일업로드 최대크기/저장폴더경로 포함 인스턴스
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		fileItemFactory.setRepository(new File(fileUploadDirectory));
		fileItemFactory.setSizeThreshold(maxFileSize);
		
		// 업로드 메소드에 인스턴스 넣어주고
		ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
		
		/* 이게 최종적으로 request를 parsing하고 파일을 저장한 뒤 필요한 내용을 담을 리스트와 맵이다.
		 * 파일에 대한 정보는 리스트에, 다른 파라미터의 정보는 모두 맵에 담을 것이다.
		 * */
		Map<String, String> parameter = new HashMap<>();
		List<Map<String, String>> fileList = new ArrayList<>();
		
		try {
			// 업로드에서 request를 파싱해서 파일들 가져와준다. 
			List<FileItem> fileItems = fileUpload.parseRequest(request);
			// 출력확인
			for(FileItem item : fileItems) {
				System.out.println("저장할 파일값 : " + item);
			}

			for(int i = 0; i < fileItems.size(); i++) {

				FileItem item = fileItems.get(i);

				if(!item.isFormField()) {

					/* 파일 데이터 유무 */
					if(item.getSize() > 0) {
						// 1. 파일에 설정한 name값
						String filedName = item.getFieldName();
						// 2. 파일명 또는 파일 경로
						String originFileName = item.getName();

						int dot = originFileName.lastIndexOf(".");
						String ext = originFileName.substring(dot);

						// 3. 파일 이름 랜덤으로 암호화 처리하고 확장자만 같도록 설정
						String randomFileName = UUID.randomUUID().toString().replace("-", "") + ext;

						// 저장할 파일 정보를 담은 인스턴스 생성
						File storeFile = new File(fileUploadDirectory + "/" + randomFileName);

						
						/* ****업로드된 파일을 저장소디렉토리에 저장**** */
						item.write(storeFile);

						Map<String, String> fileMap = new HashMap<>();
						fileMap.put("filedName", filedName);
						fileMap.put("originFileName", originFileName);
						fileMap.put("savedFileName", randomFileName);
						fileMap.put("savePath", fileUploadDirectory);
						
						fileList.add(fileMap);
					}

				} else {
					/* 폼 데이터의 경우 => 인코딩타입변환 */
					// 필드 name 값
					parameter.put(item.getFieldName(), new String(item.getString().getBytes("ISO-8859-1"), "UTF-8"));
				}
			}

			System.out.println("parameter : " + parameter);
			System.out.println("fileList : " + fileList);
			
			/* String reviewStar = Double.parseDouble(request.getParameter("rating")); */
			String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
			
			ActiReviewDTO requestReview = new ActiReviewDTO();
			requestReview.setActiNum(parameter.get("hdActivityNum"));
			requestReview.setChooseOption(parameter.get("hdChooseOption"));
			requestReview.setContent(parameter.get("reviewCon"));
			requestReview.setReviewStar(Double.parseDouble(parameter.get("rating")));
			requestReview.setTitle(parameter.get("title"));
			requestReview.setWriterId(userId);
			requestReview.setImage(fileList.get(0).get("savedFileName"));

			System.out.println(requestReview);
			
			int result = new MypageService().registReview(requestReview);
			
			
			
			
			// result 결과에 따라서 페이지이동
			// 고려사항
			// 1. 현재 페이지에 있는데이터를 다른 페이지(서블릿)으로 넘겨줄꺼냐 
			// 2. 현재 페이지의 내용을 다 버리고 새로운 페이지를 요청할꺼
			String path = "";
			if(result > 0) {

			    ActivityService actiService = new ActivityService(); 
			    String actiNum = parameter.get("hdActivityNum");
			    System.out.println("액티비티 이름 : " + actiNum);
				int updateStar = actiService.updateStar(actiNum);
				System.out.println("업데이트 결과 : " + updateStar);
				path = "/acti/mypage/review";
				response.sendRedirect(path);
				

			} else {

				path = "/WEB-INF/views/common/failed.jsp";

				request.setAttribute("message", "리뷰등록실패!");

				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}	
			
//			Map<String,String> map = new HashMap<>();
//			map.put("userId", userId);
//			MypageService mypageService = new MypageService();
//			CartAndMemberAndPayHIsDTO tripList = mypageService.selectCartAndMemberAndPayHIs(map);
//			request.setAttribute("tripList", tripList);
//			
//			RequestDispatcher rdd = request.getRequestDispatcher(path);
//			rdd.forward(request, response);
			
		} catch(Exception e) {
			int cnt = 0;
			for(int i = 0; i < fileList.size(); i++) {
				Map<String, String> file = fileList.get(i);
				
				File deleteFile = new File(fileUploadDirectory + "/" + file.get("savedFileName"));
				boolean isDeleted = deleteFile.delete();
				
				if(isDeleted) {
					cnt++;
				}
			}
			
			if(cnt == fileList.size()) {
				System.out.println("업로드에실패한 모든 사진 삭제 완료!");
				e.printStackTrace();
			} else {
				e.printStackTrace();
			}
			
		}
		
		
		}
	}
}
