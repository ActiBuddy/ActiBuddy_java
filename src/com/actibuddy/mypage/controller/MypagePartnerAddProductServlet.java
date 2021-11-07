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

import com.actibuddy.activity.model.dto.ActivityDTO;
import com.actibuddy.activity.model.dto.ActivityOptionDTO;
import com.actibuddy.member.model.dto.MemberDTO;
import com.actibuddy.mypage.model.dto.ActiConditionHisDTO;
import com.actibuddy.mypage.service.MypageService;


@WebServlet("/mypage/partner/add")
public class MypagePartnerAddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mypage/addproduct.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* post한 데이터들이 multipart/form-data 형식으로 들어왔는지 true/false로 알려주는 메소드 */
		if(ServletFileUpload.isMultipartContent(request)) { 
	
			/* 
			 * getServletContext()가 절대 경로를 불러와주고
			 * 그 안의 getServletgetRealPath("/")가 webContent까지의 경로를 불러와줍니다.
			 */
			String rootLocation = getServletContext().getRealPath("/");
			/* 기본적으로 byte로 시작 => 10MB */
			int maxFileSize = 1024 * 1024 * 10;
			String encodingType = "UTF-8";

			System.out.println("파일 저장 ROOT 경로 : " + rootLocation);
//			System.out.println("최대 업로드 파일 용량 : " + maxFileSize);
//			System.out.println("인코딩 방식 : " + encodingType);

			/* 
			 * 1. 파일 객체의 정의 :
			 *   File 객체는 하드디스크에 존재하는 실제 파일이나 디렉토리가 아니고 그것에 대한 경로를 추상화한 객체이다.
			 *   즉, 만들고자하는 디렉토리나 새 파일에 대한 경로를 캡슐화한 것이다.
			 * 
			 * 2. 실제 전송된 File 데이터를 가져오기 위해서는 fileItem을 사용해야한다.
			 * 
			 * 3. 현재 Servlet에서 사용하는 File 객체 2개의 용도
			 * 1) directory : 파일을 저장할 폴더 경로 (저장할 폴더가이존재하는지 체크 하기 위함)
			 * 2) storeFile : 실제 저장할 경로 + 파일명을 담은 파일 인스턴스 (write해서 item을 실제로 저장하기 위함)
			 *  */
			
			String fileUploadDirectory = rootLocation + "/resources/image/addActi/";
			File directory = new File(fileUploadDirectory);
			
			if(!directory.exists()) {
				/* 폴더를 한 개만 생성할거면 mkdir, 상위 폴더도 존재하지 않으면 한 번에 생성하란 의미로 mkdirs를 이용한다. */
				System.out.println("폴더 생성 : " + directory.mkdir());
			}
			

			/* 파일업로드 최대크기/저장폴더경로를 포함할 인스턴스이다.(정보만 담음) */
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(new File(fileUploadDirectory));
			fileItemFactory.setSizeThreshold(maxFileSize);
			
			/* ServletFileUpload가 파라미터 타입이 FileItemFactory이며
			   업로드된 Fileitem 오브젝트를 생성해주는 클래스이다. */
			ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
			
			// 파일데이터 정보 맵
			List<Map<String, String>> fileList = new ArrayList<>();
			// 그 외 폼데이터 맵
			Map<String, String> parameter = new HashMap<>();

			try {
				// 업로드에서 request를 파싱해서 요청한 fileitem들을 가져와준다. 
				List<FileItem> fileItems = fileUpload.parseRequest(request);
				// 출력확인
				for(FileItem item : fileItems) {
					System.out.println("저장할 파일값 : " + item);
				}
				/* =========== 모든 폼 데이터 꺼내오기 반복 시작 ============ */
				for(int i = 0; i < fileItems.size(); i++) {
					
					FileItem item = fileItems.get(i);
					
					/* =========== 이미지 파일 데이터 ============ */
					if(!item.isFormField()) { // isFormField() : 파일데이터를 제외한 폼데이터인가?

						/* 파일 데이터 유무 */
						if(item.getSize() > 0) {
							// 1. 파일에 설정한 name값
							String filedName = item.getFieldName();
							// 2. 사용자가 등록한 파일명+확장자
							String originFileName = item.getName();
							
							int dot = originFileName.lastIndexOf(".");
							String ext = originFileName.substring(dot);

							// 3. 파일 이름으로 설정할 랜덤 이름 + 확장자
							String randomFileName = UUID.randomUUID().toString().replace("-", "") + ext;

							// 저장할 파일 정보를 담은 인스턴스 생성
							File storeFile = new File(fileUploadDirectory + "/" + randomFileName);

							
							/* **** for문 돌아가면서 하나씩 파일아이템을 저장소디렉토리에 저장**** */
							item.write(storeFile);
							
							/* 1)DTO에 set하기 위한 file정보 key와 value 2)파일등록 실패시 사용할 목적의 map */
							Map<String, String> fileMap = new HashMap<>();
							fileMap.put("filedName", filedName);
							fileMap.put("originFileName", originFileName);
							fileMap.put("savedFileName", randomFileName);
							fileMap.put("savePath", fileUploadDirectory);

//							
							/* arrylist인 fileList에 각각의 이미지 map정보를 넣어줌 */
							fileList.add(fileMap);
							
						}
						
					/* =========== 나머지 폼 데이터 ============ */
					} else {						
						/* param1 : 각각의 폼데이터 input : name 가져와줌
						 * param2 : 폼 데이터의 경우 인코딩타입 자동 변환안해주기 때문에 변경해주는 작업이 필요하다 */
						parameter.put(item.getFieldName(), new String(item.getString().getBytes("ISO-8859-1"), "UTF-8"));
					}
				}
				/* =========== 모든 form데이터 꺼내오기 반복 끝 ============ */
				
				
				System.out.println("parameter : " + parameter);
				System.out.println("fileList : " + fileList);
				
				/* 여기서부터가 parameter(나머지 폼데이터)에서 값 가져와서 DTO에 set해주는 부분 */
				String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
				System.out.println("아이디 : " + userId);
				
				// 모든 값들을 다 인서트 해주고
				ActivityDTO requestActi = new ActivityDTO();
				requestActi.setUserId(userId);
				requestActi.setName(parameter.get("name"));
				requestActi.setLocation(parameter.get("location"));
				requestActi.setPrice(Integer.parseInt(parameter.get("price")));
				requestActi.setStartDate(java.sql.Date.valueOf(parameter.get("StartDate")));
				requestActi.setEndDate(java.sql.Date.valueOf(parameter.get("EndDate")));
				requestActi.setTip(parameter.get("tip"));
				requestActi.setLoactionCode(parameter.get("locationCode"));
				requestActi.setActivitTypeCode(parameter.get("actiType"));
				
//				
					
					
				/* 이미지파일 데이터를 DTO에 set해주는 부분 */
				for(int i = 0; i < fileList.size(); i++) {
					if(i == 0) {
						requestActi.setImage(fileList.get(i).get("savedFileName"));
					}
					if(i == 1) {
						requestActi.setImage2(fileList.get(i).get("savedFileName"));
					}
					if(i == 2) {
						requestActi.setImage3(fileList.get(i).get("savedFileName"));
					}
				}

				System.out.println("잘 나오나~~~~: " + requestActi);
				
				/* service를 통해 insert 성공 여부 판별 */
				int result = new MypageService().registReview(requestActi);
				
				System.out.println("등록 성공?? : " + result); 
				
				// 여기까지 인서트 성공하고
				// 인서트된 액티번호를 가져와서 조건들을 넣어줘야함
				
				/* 가장 최근에 등록된 액티비티 번호 조회 */
				ActiConditionHisDTO newActiNumDTO = new MypageService().selectNewActiNum();
				
				String newActiNum = newActiNumDTO.getActiNum();
				
				/* 조회한 액티비티 번호로 액티비티 조건 이력 등록  */
				ActiConditionHisDTO requestActiCon = new ActiConditionHisDTO();
				
				System.out.println(parameter.get("ActiConNum"));
				System.out.println(parameter.get("ActiConNum2"));
				System.out.println(parameter.get("ActiConNum3"));
				System.out.println(parameter.get("ActiConNum4"));
				
				
				String ActiConNum = parameter.get("ActiConNum");
				String ActiConNum2 = parameter.get("ActiConNum2");
				String ActiConNum3 = parameter.get("ActiConNum3");
				String ActiConNum4 = parameter.get("ActiConNum4");

				if(ActiConNum != "" && ActiConNum != null ) {
					requestActiCon.setActiConNum(ActiConNum);
					requestActiCon.setActiNum(newActiNum);
					int conResult = new MypageService().insertCon(requestActiCon);
					System.out.println("조건 1 등록 ? :" + conResult);
				}
				
				if(ActiConNum2 != "" && ActiConNum2 != null) {
					requestActiCon.setActiConNum(ActiConNum2);
					requestActiCon.setActiNum(newActiNum);
					int conResult = new MypageService().insertCon(requestActiCon);
					System.out.println("조건 2 등록 ? :" + conResult);
				}
				
				if(ActiConNum3 != "" && ActiConNum3 != null) {
					requestActiCon.setActiConNum(ActiConNum3);
					requestActiCon.setActiNum(newActiNum);
					int conResult = new MypageService().insertCon(requestActiCon);
					System.out.println("조건 3 등록 ? :" + conResult);
				}
				
				if(ActiConNum4 != "" && ActiConNum4 != null) {
					requestActiCon.setActiConNum(ActiConNum4);
					requestActiCon.setActiNum(newActiNum);
					int conResult = new MypageService().insertCon(requestActiCon);
					System.out.println("조건 4 등록 ? :" + conResult);
				}
				// 옵션 입력 값과 가격을 같이 갖고 온다.?
				
				ActivityOptionDTO requestOption = new ActivityOptionDTO();
				
				String option1 = parameter.get("option1");
				String option2 = parameter.get("option2");
				String option3 = parameter.get("option3");
				String option4 = parameter.get("option4");
				
			    System.out.println("옵션1 가격 : " + parameter.get("opPrice1"));
			    System.out.println("옵션2 가격 : " +parameter.get("opPrice2"));
			    System.out.println("옵션3 가격 : " +parameter.get("opPrice3"));
			    System.out.println("옵션4 가격 : " +parameter.get("opPrice4"));
				
				
				if((!parameter.get("opPrice1").equals("")) && (!option1.equals(""))) {
					
					int opPrice1 = Integer.parseInt(parameter.get("opPrice1"));
					requestOption.setActiNum(newActiNum);
					requestOption.setOptionName(option1);
					requestOption.setPrice(opPrice1);
					int resultOp = new MypageService().insertOp(requestOption);
					System.out.println("옵션 1 성공 ? : " + resultOp);
				}
				if((!parameter.get("opPrice2").equals("")) && (!option2.equals(""))) {
					
					int opPrice2 = Integer.parseInt(parameter.get("opPrice2"));
					requestOption.setActiNum(newActiNum);
					requestOption.setOptionName(option2);
					requestOption.setPrice(opPrice2);
					int resultOp = new MypageService().insertOp(requestOption);
					System.out.println("옵션 2 성공 ? : " + resultOp);
				}
				if((!parameter.get("opPrice3").equals("")) && (!option3.equals(""))) {
					
					int opPrice3 = Integer.parseInt(parameter.get("opPrice3")); 
					requestOption.setActiNum(newActiNum);
					requestOption.setOptionName(option3);
					requestOption.setPrice(opPrice3);
					int resultOp = new MypageService().insertOp(requestOption);
					System.out.println("옵션 3 성공 ? : " + resultOp);
				}
				if((!parameter.get("opPrice4").equals("")) && (!option4.equals(""))) {
					
					int opPrice4 = Integer.parseInt(parameter.get("opPrice4"));
					requestOption.setActiNum(newActiNum);
					requestOption.setOptionName(option4);
					requestOption.setPrice(opPrice4);
					int resultOp = new MypageService().insertOp(requestOption);
					System.out.println("옵션 4 성공 ? : " + resultOp);
				}
				
				
				System.out.println("옵션1 : " + parameter.get("option1"));
				System.out.println(parameter.get("opPrice1"));
				System.out.println("옵션 2 : " + parameter.get("option2"));
				System.out.println(parameter.get("opPrice2"));
				System.out.println("옵션 3 : " + parameter.get("option3"));
				System.out.println(parameter.get("opPrice3"));
				System.out.println("옵션 4 : " + parameter.get("option4"));
				System.out.println(parameter.get("opPrice4"));
				
				
				// result 결과에 따라서 페이지이동
				// 고려사항
				// 1. 현재 페이지에 있는데이터를 다른 페이지(서블릿)으로 넘겨줄꺼냐 
				// 2. 현재 페이지의 내용을 다 버리고 새로운 페이지를 요청할꺼냐
				String path = "";
				if(result > 0) {
	
					path = "/acti/mypage/partner";
					response.sendRedirect(path);
	
				} else {
	
					path = "/WEB-INF/views/common/failed.jsp";
	
					request.setAttribute("message", "리뷰등록실패!");
	
					RequestDispatcher rd = request.getRequestDispatcher(path);
					rd.forward(request, response);
				}	
				
			} catch(Exception e) {
				/* 예외 발생한 경우 에러 발생 전까지 넣어진 이미지 데이터 삭제해주는 부분 */
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
