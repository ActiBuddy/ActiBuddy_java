<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>triplist</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">

</head>

<body>


<<<<<<< HEAD
      <jsp:include page="../common/menubar.jsp"/>
=======
    <nav class="navbar">
        <ul class="navbar_menu">
            <a href="../main/main.html"><img src="${ pageContext.servletContext.contextPath }/resources/image/actibuddylogo.png" class="nav_logo"></a>
            <li class="dropbox"><a href="../activity/activity.html">액티비티</a></li>
            <li class="dropbox"><a href="../Mate/matemain.html">메이팅</a></li>
            <li><input type="text" placeholder="Search"></li>
            <li><button type="button" onclick="location.href='../activity/searchActivity.html'">Submit</button></li>
        </ul>

        <ul class="navbar_link">
            <li><a href="../FAQ/FAQ_main.html">FAQ</a></li>
            <li><a href="../singup/signup.html">회원가입</a></li>
            <li><button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button></li>
        </ul>
    </nav>
>>>>>>> refs/remotes/origin/hyejoo


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
        <div class="side-all">
            <div class="side-1">
                <br><br><br>
                <img src="../resources/image/profile.png" width="100px" height="100px"/>
                
                <c:if test="${ !empty sessionScope.loginMember }">
		
        			<h4 align="center"><c:out value="${ sessionScope.loginMember.userName }"/></h4>

				</c:if>
                
                
                <hr>
                <br>

                <a href="../mypage/memQuit.html" id="quit">회원탈퇴</a>
    
                
            </div>
            
            <div class="side-2">
                
                <br><br>
                <div class="menu">
                    <a href="../mypage/tripList.html">여행 내역</a><br><br><br>
                    <a href="../mypage/review.html">이용 후기</a><br><br><br>
                    <a href="../mypage/cart.html">장바구니</a><br><br><br>
                    <a href="../mypage/mate-list.html">메이트 내역</a><br><br><br> 
                    <a href="">문의 사항</a><br><br>
                </div>
            </div>

            
        </div>
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" class="forgreen" id="one">여행 내역</button>
                <button type="button" class="forgreen">다가오는 여행</button>

            </div>

            <div class="a-center-1">
                
                <div class="a-center-text">

                    <h4>완료된 여행</h4>
                    <hr>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>옵션 선택 :  제주도 감귤마을 스쿠버 다이빙</h3>
                    <button id="review-write" class="forgreen" type="button" onclick="location.href='trip-review-write.html'">후기 작성하기</button>
                    
                    <br>
                    <h5>날짜 : 2021년 11월 11일 <br> 수량 : 1</h5>
    
                    <br><br><br>
    
                    <h5 id="usestatus">이용상태 : </h5>
                    <button id="complete">사용완료</button>
    
                    <hr>
    
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>옵션 선택 : 차귀도 배낚시 체험</h3>
                    <button id="review-write" class="forgreen" type="button" onclick="location.href=''">후기 작성완료</button>
                    
                    <br>
                    <h5>날짜 : <br> 수량 : </h5>
                    
                    <br><br><br>

                    <h5 id="usestatus">이용상태 : </h5>
                    <button id="complete">사용완료</button>
    
                    <hr>
                    <h4>취소된 여행</h4>
                    <hr>

                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>옵션 선택 : </h3>
    
                    <h5>날짜 : <br> 수량 : </h5>
    
                    <br><hr>


                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>

</body>
</html>