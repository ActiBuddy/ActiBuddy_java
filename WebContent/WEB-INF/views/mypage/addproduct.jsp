<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>여행 내역</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">

</head>

<body>


      <jsp:include page="../common/menubar.jsp"/>

    <div class="logo" >
    
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>
    
    <c:if test="${ !empty sessionScope.loginMember }">
		<div class="page-text">

        	<h2><c:out value="${ sessionScope.loginMember.userName }"/>님의 마이페이지</h2>
        	
		</div>
	</c:if>



    <div class="body-all">
    
         <jsp:include page="../common/mypagesidebar.jsp"/>
        
        <div class="a-center-all">

            <div class="a-center-1">
                
                <div class="a-center-text">
        			<h4><c:out value="${ sessionScope.loginMember.userName }"/>님의 상품 등록</h4>
        			<hr>
        			
					<form id="addproductForm" action="${ pageContext.servletContext.contextPath }/mypage/partner/add" method="post">
						<div>
						<span><h4>액티비티 이름</h4></span>
         				<input type="text" name="Actiname" style="width:250px" placeholder="액티비티 이름을 입력해주세요!"/>
         				<br><br><hr>
         				
         				<span><h4>위도 및 경도</h4></span>
         				<input type="text" name="location" style="width:250px" placeholder="(위도),(경도) 형태로 입력해주세요!"/>
         				<br><br><hr>
         			
         				<span><h4>액티비티 최소 가격</h4></span>
         				<input type="text" name="price" style="width:250px" placeholder="액티비티 최소 가격을 입력해주세요!"/>
         				
         				<br><br><hr>
         				<span><h4>액티비티 타입</h4></span>
         				<select id="location" name="location" size="1">
         					<option>액티비티를 선택해주세요!</option>
							<option value="ACTI_TYPE41">캠핑 & 글램핑</option>
							<option value="ACTI_TYPE43">루지 & 짚라인 & 어드벤처</option>
							<option value="ACTI_TYPE61">스키 & 스노보드</option>
							<option value="ACTI_TYPE62">공원 & 자연</option>
							<option value="ACTI_TYPE63">아쿠아리움 & 동물원</option>
							<option value="ACTI_TYPE64">테마파크 & 워터파크</option>
							<option value="ACTI_TYPE65">박물관 & 미술관</option>
							<option value="ACTI_TYPE66">스파 & 온천</option>
							<option value="ACTI_TYPE67">웰빙 & 웰니스</option>
							<option value="ACTI_TYPE68">워킹 & 자전거투어</option>
							<option value="ACTI_TYPE69">버스 & 스쿠터 & ATV투어</option>
							<option value="ACTI_TYPE70">서핑 & 기타 수상레저</option>
							<option value="ACTI_TYPE71">패들보드 & 카약 & 래프팅</option>
						</select>
						<br><br><hr>
         				
         				<span><h4>시작 날짜</h4></span>
         				<input type="date" name="longitude" style="width:250px" placeholder="시작날짜를 입력해주세요!"/>
         				<br><br><hr>
         				
         				<span><h4>종료 날짜</h4></span>
         				<input type="date" name="longitude" style="width:250px" placeholder="종료날짜를 입력해주세요!"/>
         				<br><br><hr>
         				
         				<span><h4>지역</h4></span>
         				<select id="location" name="location" size="1">
         					<option>지역을 선택해주세요!</option>
							<option value="1">서울</option>
							<option value="2">경기도</option>
							<option value="3">제주도</option>
							<option value="4">강원도</option>
							<option value="5">전라도</option>
							<option value="6">경상도</option>
							<option value="7">충청도</option>
							<option value="8">부산</option>
						</select>
						<br><br><hr>
						<div class="img_border"><br>
               <div class="file">첫번째 이미지 : <input accept="image/*" type="file" name="img1" value="file1"></div>
               <div class="file">두번째 이미지 : <input accept="image/*" type="file" name="img2" value="file2"></div>
               <div class="file">세번째 이미지 : <input accept="image/*" type="file" name="img3" value="file3"></div>
               <br><hr><h5>사진은 최대 3장까지 첨부 가능합니다.</h5>
           </div>
         				
         				<!--  위도, 경도, 액티비티 최소 가격, 액티타입, 시작날짜, 종료날, 액티비티 , 이미지 1,2,3, 아이디, (가격, 옵션)  -->
						</div>
						<br><br>
						<button type="submit" class="forgreen" id="actigive">등록하기</button>
						<br><br>
					</form>
                </div>
            </div>
        </div>
    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>

</body>
</html>