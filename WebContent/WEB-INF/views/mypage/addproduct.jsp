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
        			
					<form id="addproductForm" action="${ pageContext.servletContext.contextPath }/mypage/partner/add" method="post" enctype="multipart/form-data">
						<div>
						<span><h4>액티비티 이름</h4></span>
         				<input type="text" name="name" style="width:250px" placeholder="액티비티 이름을 입력해주세요!"/>
         				<br><br><hr>
         				
         				<span><h4>위도 및 경도</h4></span>
         				<input type="text" name="location" style="width:250px" placeholder="(위도),(경도) 형태로 입력해주세요!"/>
         				<br><br><hr>
         			
         				<span><h4>액티비티 최소 가격</h4></span>
         				<input type="text" name="price" style="width:250px" placeholder="액티비티 최소 가격을 입력해주세요!"/>
         				
         				<br><br><hr>
         				<span><h4>액티비티 타입</h4></span>
         				<select id="actiType" name="actiType" size="1">
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
         				<input type="date" name="StartDate" style="width:250px" placeholder="시작날짜를 입력해주세요!"/>
         				<br><br><hr>
         				
         				<span><h4>종료 날짜</h4></span>
         				<input type="date" name="EndDate" style="width:250px" placeholder="종료날짜를 입력해주세요!"/>
         				<br><br><hr>
         				
         				<span><h4>지역</h4></span>
         				<select id="locationCode" name="locationCode" size="1">
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
						<span><h4>조건 선택</h4></span>
						<select id="condition1" name="ActiConNum" size="1">
         					<option value="" selected disabled hidden>액티비티 조건1을 선택해주세요!</option>
							<option value="ACTI_CON16">그룹당 5명 이하</option>
							<option value="ACTI_CON17">그룹당 10명 이하</option>
							<option value="ACTI_CON18">그룹당 10명 이상</option>
						</select>
						<br><br>
						<select id="condition2" name="ActiConNum2" size="1">
         					<option value="" selected disabled hidden>액티비티 조건2를 선택해주세요!</option>
							<option value="ACTI_CON9">액티비티 시작 전 무료 취소 가능</option>
							<option value="ACTI_CON10">24시간 전 취소 가능</option>
							<option value="ACTI_CON11">48시간 전 취소 가능</option>
							<option value="ACTI_CON12">72시간 전 취소 가능</option>
							<option value="ACTI_CON13">일주일 전 취소 가능</option>
							<option value="ACTI_CON14">조건부 취소</option>
							<option value="ACTI_CON23">취소 불가</option>
						</select>
						<br><br>
						<select id="condition1" name="ActiConNum3" size="1">
         					<option value="" selected disabled hidden>액티비티 조건3을 선택해주세요!</option>
							<option value="ACTI_CON19">일정 약 1시간이내 소요</option>
							<option value="ACTI_CON20">일정 약 2시간이내 소요</option>
							<option value="ACTI_CON21">일정 약 4시간이내 소요</option>
							<option value="ACTI_CON22">일정 약 4시간이상 소요</option>
						</select>
						<br><br>
						<select id="condition1" name="ActiConNum4" size="1">
         					<option value="" selected disabled hidden>액티비티 조건4을 선택해주세요!</option>
							<option value="ACTI_CON15">날짜 지정 티켓</option>
							<option value="ACTI_CON24">오픈 티켓</option>
						</select>	
						<br><br>					
						<hr>
						
						<span><h4>액티비티 옵션</h4></span>
						<h5>옵션은 최대 4개까지 설정 가능합니다.</h5>
         				<input type="text" name="option1" style="width:250px" placeholder="액티비티 옵션을 입력해주세요!"/>
         				<input type="text" name="opPrice1" style="width:250px" placeholder="액티비티 옵션 가격을 입력해주세요!"/>
         				<br><br><hr>
         				<span><h4>액티비티 옵션</h4></span>
         				<input type="text" name="option2" style="width:250px" placeholder="액티비티 옵션을 입력해주세요!"/>
         				<input type="text" name="opPrice2" style="width:250px" placeholder="액티비티 옵션 가격을 입력해주세요!"/>
         				<br><br><hr>
         				<span><h4>액티비티 옵션</h4></span>
         				<input type="text" name="option3" style="width:250px" placeholder="액티비티 옵션을 입력해주세요!"/>
         				<input type="text" name="opPrice3" style="width:250px" placeholder="액티비티 옵션 가격을 입력해주세요!"/>
         				<br><br><hr>
         				<span><h4>액티비티 옵션</h4></span>
         				<input type="text" name="option4" style="width:250px" placeholder="액티비티 옵션을 입력해주세요!"/>
         				<input type="text" name="opPrice4" style="width:250px" placeholder="액티비티 옵션 가격을 입력해주세요!"/>
         				<br><br><hr>
						
         				
						<span><h4>액티비티 팁</h4></span>
						<input type="text" name="tip" style="width:500px" placeholder="액티비티 팁을 입력해주세요!"/>
						
						<br><br><hr>
						<div class="img_border"><br>
			               <div class="file">첫번째 이미지 : <input accept="image/*" type="file" name="image1" value="image1"></div>
			               <div class="file">두번째 이미지 : <input accept="image/*" type="file" name="image2" value="image2"></div>
			               <div class="file">세번째 이미지 : <input accept="image/*" type="file" name="image3" value="image3"></div>
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