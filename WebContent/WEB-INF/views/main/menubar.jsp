<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ACTIBUDDY</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link href="/acti/resources/css/menubar.css" rel="stylesheet"/>
	<link href="/acti/resources/css/actibuddy.css" rel="stylesheet"/>
	<script>
	 $(function () {
	        $("#acti_2").on({
	          mouseover: function () {
	            $("#acti_detail2").css("display", "block");
	            $("#acti_detail1").css("display", "none");
	          },
	          mouseleave: function () {
	            $("#acti_detail2").css("display", "none");
	          },
	        });
	      });

	      $(function () {
	        $("#acti_detail2").on({
	          mouseover: function () {
	            $("#acti_detail2").css("display", "block");
	          },
	          mouseleave: function () {
	            $("#acti_detail2").css("display", "none");
	          },
	        });
	      });
	</script>
</head>
<body>

	<div class="activity_main">
		<div class="navbar_menu">

			<span> 
			<img src="resources/image/actibuddylogo.png" class="nav_logo">
			</span> 
			<span id="acti_1">
			<a href="activity/main">액티비티</a>
			</span>
			<span id="acti_2">
			<a href="../Mate/matemain.html">메이팅</a>
			<div id="acti_detail2">
            <a href="#">메이트 매칭</a>
            <a href="#">메이트 후기</a>
            </div>
			</span>
			<span>
			<input type="text" placeholder="Search">
			</span>
			<span>
				<button type="button" class="search-btn"
					onclick="location.href='../activity/searchActivity.html'">Submit</button>
			</span>
		</div>
	
	<!—  로그인 안되었을 때 —>
	<c:if test="${ empty sessionScope.loginMember }">
		<div class="navbar_link">
			<span> <a href="../FAQ/FAQ_main.html">FAQ</a>
			</span> <span> <a href="member/regist">회원가입</a>
			</span> <span>
				<button type="button" class="login_btn"><a href="member/login">로그인</a></button>
			</span>
		</div>
	</c:if>
	
	<!—  로그인 되었을 때 —>
		<c:if test="${ !empty sessionScope.loginMember }">
			<div class="navbar_link2">
				<div>* <c:out value="${ sessionScope.loginMember.userName }"/>님의 방문을 환영합니다 *</div>
				<span> <a href="../FAQ/FAQ_main.html">FAQ</a></span>
				<span>
				<a href="mypage/main" style="color:green; font-weight: bold;">마이페이지</a>
				</span>
				<span>
				<button type="button" class="logout_btn" onclick="location.href='member/logout'">로그아웃</button>
				</span>
			</div>
		</c:if>
	</div>

    
  </body>
</html>