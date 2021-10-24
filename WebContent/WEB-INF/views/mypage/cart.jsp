<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>cart</title>
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
                <a href="">로그아웃</a>
                <a href="" id="quit">회원탈퇴</a>
    
                
            </div>
            <div class="side-2">
                
                <br><br>
                <div class="menu">
                    <a href="../mypage/tripList.html">여행 내역</a><br><br><br>
                    <a href="../mypage/review.html">이용 후기</a><br><br><br>
                    <a href="../mypage/cart.html">장바구니</a><br><br><br>
                    <a href="../mypage/mate-list.html">메이트 내역</a><br><br><br> 
                    <a href="../mypage/my-question.html">문의 사항</a><br><br>
                </div>
            </div>

            
        </div>
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" id="one" class="forgreen">장바구니</button>

            </div>

            <div class="a-center-1">
                
                <div class="c-center-text">

                    <br>
                    <hr>
                    <button id="x">X</button>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>★★★★★ </h3>
                    <h3>후기 제목 </h3>
                    <h4>후기 상품 : </h4>
    
                    <h5>날짜 : <br> 수량 : </h5>
                    <br>
                    <h4>총 결제할 금액 : </h4>
                    <button id="pay">바로 결제</button>
    
                    <hr>
                    <button id="x">X</button>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>★★★★☆ </h3>
                    <h3>후기 제목 </h3>
                    <h4>후기 상품 : </h4>
                    <br>
                    <h5>날짜 : <br> 수량 : </h5>
                    <br>
                    <h4>총 결제할 금액 : </h4>
                    <button id="pay" type="button" onclick="location.href=''">바로 결제</button>

                    <hr>
                    


                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>

</body>
</html>