<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>triplist</title>
    <link rel="stylesheet" href="../../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../../resources/css/mypage.css">

</head>

<body>


      <jsp:include page="../common/menubar.jsp"/>


    <div class="logo" >
    
        <img src="../../resources/image/mypage/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>
    
    <div class="page-text">
        <h2>해씨초코볼  님의 마이페이지</h2>
    </div>

    <div class="body-all">
    
        
        <div class="side-all">
            
    
            <div class="side-1">
                <br><br><br>
                <img src="../../resources/image/mypage/profile.png" width="100px" height="100px"/>
                <h4>해씨초코볼</h4>
                
                <hr>
                <br>
                <a href="../main/main.html" onclick="alert('로그아웃하시겠습니까?')">로그아웃</a>
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