<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ACTIBUDDY</title>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link href="resources/css/actibuddy.css" rel="stylesheet"/>
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
     <script src="${ pageContext.servletContext.contextPath }/resources/js/menubar.js"></script>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
	
	
	<main class="wrapper">
		<div>
			<img src="resources/image/actibuddylogo.png" class="mainlogo">
		</div>

		<div class="mainsearch">
				<form action="/acti/search/activity" method="get">
				<input type="text" size="50" placeholder="Search" name="searchValue">
				<button type="submit" class="search-btn" id="sub">검색하기</button>
				</form>
		</div>

		<div class="all1">

			<div class="mainimage">
				<c:forEach var="location" items="${ locationList }">
				<div class="si">
					<a href="activity/location?locationName=${ location.name }"><img src="${ location.image } "></a>
					<div>
						<h1>${ location.name }</h1>
					</div>
				</div>
				</c:forEach>
				</div>
			</div>

			<div class="event">
				<a href="https://www.naver.com"><img
					src="resources/image/summerdeal.png"></a>
			</div>


			<div class="favoacti">
				<h1>인기 액티비티</h1>
				<div class="favo">
					<div>
						<h3>액티버티 이용자가 선호하는 인기 야외 액티비티</h3>
						<br>
						<br>
						<h4>화사한 햇살과 푸른 하늘의 자연과 함께하는 야외 액티비티로 스트레스를 날려버리세요!</h4>
					</div>
					<a href="https://www.naver.com/"><img
						src="resources/image/seoul.jpeg"></a> <a
						href="https://www.google.com/"><img
						src="resources/image/jeju.jpeg"></a> <a
						href="https://www.naver.com/"><img
						src="resources/image/busan.jpeg"></a>
				</div>
			</div>

			<div class="favoacti">
				<h1>지금 떠나기 좋은 감성 차박/캠핑/피크닉</h1>
				<div class="favo">
					<img src="resources/image/gotogether.png"> <a
						href="https://www.naver.com/"><img
						src="resources/image/seoul.jpeg"></a> <a
						href="https://www.google.com/"><img
						src="resources/image/jeju.jpeg"></a> <a
						href="https://www.naver.com/"><img
						src="resources/image/busan.jpeg"></a>
				</div>


			</div>

			<div class="mate">
				<img src="resources/image/mate.png">
			</div>

			<div class="mate1">
				<div class="order">
					<a href="https://www.naver.com/"><img
						src="resources/image/seoul.jpeg"></a> <a
						href="https://www.google.com/"><img
						src="resources/image/jeju.jpeg"></a> <a
						href="https://www.naver.com/"><img
						src="resources/image/busan.jpeg"></a>
				</div>
			</div>
		</div>


	</main>
	
		<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>