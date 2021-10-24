<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>마이페이지</title>
   <!--  <link rel="stylesheet" href="../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../resources/css/mypage.css"> -->

</head>

<body>


      <jsp:include page="../common/menubar.jsp"/>


    <div class="logo" >
    
        <img src="../resources/image/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>

  
<div class="page-text">
        <h2>해씨초코볼  님의 마이페이지</h2>
</div>

    <div class="body-all">
    
        
        <div class="side-all">
            
    
            <div class="side-1">
                <br><br><br>
                <img src="../resources/image/profile.png" width="100px" height="100px"/>
                <h4>해씨초코볼</h4>
                
                <hr>
                <br>
                <a href="../main/main.html" onclick="alert('로그아웃하시겠습니까?')">로그아웃</a>
                <script>
                    funtion()
                </script>
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
        
        <div class="center-all">

            <div class="center-1">
                <textarea id ="text1" placeholder="소개를 작성해주세요"></textarea>
        
                <hr>
        
                <textarea> 선호하는 액티비티 : </textarea>
                <button type="submit">수정하기</button>
    
            </div>
            <div class="center-2">

                <h3>해씨초코볼 님이 받은 메이트 평가</h3>
                <hr> 

                <h3>★★★★★ </h3>
                <h4>한줄 후기 :</h4>
                <h5> 함께 했던 메이트 : </h5>
                <button type="submit"></button>
                <hr>

                <h3>★★★★☆ </h3>
                <h4>한줄 후기 :</h4>
                <h5> 함께 했던 메이트 : </h5>
                <button type="submit"></button>

                
            </div>
        </div>
    </div>


    
    



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>