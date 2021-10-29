package com.actibuddy.mate.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.actibuddy.mate.model.dto.MateReviewDTO;
import com.actibuddy.mate.model.service.MateReviewService;


@WebServlet("/mate/review/regist")
public class MateReviewRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mate/mateReviewWriting.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(ServletFileUpload.isMultipartContent(request)) { 
			// WebContent까지의 폴더명
			String rootLocation = getServletContext().getRealPath("/");
			int maxFileSize = 1024 * 1024 * 10;
			String encodingType = "UTF-8";

			System.out.println("파일 저장 ROOT 경로 : " + rootLocation);
//			System.out.println("최대 업로드 파일 용량 : " + maxFileSize);
//			System.out.println("인코딩 방식 : " + encodingType);

			// 4. 파일경로
			String fileUploadDirectory = rootLocation + "/resources/image/review/";
			File directory = new File(fileUploadDirectory);
			
			if(!directory.exists()) {
				/* 폴더를 한 개만 생성할거면 mkdir, 상위 폴더도 존재하지 않으면 한 번에 생성하란 의미로 mkdirs를 이용한다. */
				System.out.println("폴더 생성 : " + directory.mkdirs());
			}
			
			// 파일 정보 맵
			List<Map<String, String>> fileList = new ArrayList<>();
			// 다른 파라미터 맵
			Map<String, String> parameter = new HashMap<>();

			// 파일업로드 최대크기/저장폴더경로 포함 인스턴스
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(new File(fileUploadDirectory));
			fileItemFactory.setSizeThreshold(maxFileSize);

			// 업로드 메소드에 인스턴스 넣어주고
			ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);

			try {
				// 업로드에서 request를 파싱해서 파일들 가져와준다. 
				List<FileItem> fileItems = fileUpload.parseRequest(request);
				// 출력확인
				for(FileItem item : fileItems) {
					System.out.println("저장할 파일 설정값 : " + item);
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

							int width = 470;
							int height = 450;
							
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
				
				MateReviewDTO requestReview = new MateReviewDTO();
				requestReview.setTitle(parameter.get("title"));
				requestReview.setUserId(parameter.get("userId"));
				requestReview.setContent(parameter.get("con"));
				requestReview.setRepYn("N");

				for(int i = 0; i < fileList.size(); i++) {
					if(i == 0) {
						requestReview.setImg1(fileList.get(i).get("savedFileName"));
					}
					if(i == 1) {
						requestReview.setImg2(fileList.get(i).get("savedFileName"));
					}
					if(i == 2) {
						requestReview.setImg3(fileList.get(i).get("savedFileName"));
					}
				}

				System.out.println(requestReview);
				
				int result = new MateReviewService().registReview(requestReview);
				// result 결과에 따라서 페이지이동
				// 고려사항
				// 1. 현재 페이지에 있는데이터를 다른 페이지(서블릿)으로 넘겨줄꺼냐 
				// 2. 현재 페이지의 내용을 다 버리고 새로운 페이지를 요청할꺼
				String path = "";
				if(result > 0) {
	
					path = "/acti/mate/review";
					response.sendRedirect(path);
	
				} else {
	
					path = "/WEB-INF/views/common/failed.jsp";
	
					request.setAttribute("message", "리뷰등록실패!");
	
					RequestDispatcher rd = request.getRequestDispatcher(path);
					rd.forward(request, response);
				}	
				
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