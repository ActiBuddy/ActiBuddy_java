<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>mate-write-review</title>
    <link rel="stylesheet" href="../../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../../resources/css/mypage.css">

</head>

<body>

    <nav class="navbar">
        <ul class="navbar_menu">
            <a href="../main/main.html"><img src="../../resources/image/actibuddylogo.png" class="nav_logo"></a>
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



    <div class="logo" >
    
        <img src="../../resources/image/mypage/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>
    
    <div class="page-text">
        <h2>해씨초코볼  님의 마이페이지</h2>
    </div>

    <div class="body-all" id="background">

        <div class="side-all">
            
    
            <div class="side-1">
                <br><br><br>
                <img src="../../resources/image/mypage/profile.png" width="100px" height="100px"/>
                <h4>해씨초코볼</h4>
                
                <hr>
                <br>
                <a href="../main/main.html" onclick="alert('로그아웃하시겠습니까?')">로그아웃</a>
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
        

        <div class="r-center-all">

            <div class="r-center-1">
                <h3>메이트 후기 작성  </h3>
                <hr>
                <h4>제목 : </h4>
                <h5>참가한 메이팅 : </h5>
                <br><br>
                <h5> 평가할 메이트 : </h5>
                <hr>
                <h4>별점을 매겨수세요 ☆☆☆☆☆</h4>
                <hr>
                <h6>후기 내용</h6>
                <hr><br>
                <input type="checkbox" id="b">
                    <label for="b">저와 딱 맞는 메이트였어요!</label><br>
                <input type="checkbox" id="c">
                    <label for="c">다음에도 같이 여행하고 싶어요.</label><br>
                <input type="checkbox" id="d">
                    <label for="d">메이트와 좋은 친구가 되었어요.</label><br>
                <input type="checkbox" id="e">
                    <label for="e">함께했던 여행이 아쉬웠어요.</label><br>
                <input type="checkbox" id="f">
                    <label for="f">아쉽지만 잘 맞지 않은 메이트였어요.</label><br>
                <br><hr>

                <h6>기타</h6>
                <hr>

                <textarea placeholder="기타 평가를 작성해주세요"></textarea>
                <br><br><br>

                <button type="submit">후기 작성하기</button>

            </div>
           
        </div>

    </div>
















<!-- 하단 바 -->
<footer>
    <div class="footer">
        <span></span>

        <ul>2021 액티버디</ul>
        <ul> 회사소개
            <li><a href="../../views/introduce/introduce.html">액티버디소개</a></li>
            <li><a href="../../views/mypage/mypage.html">마이페이지</a></li>

            </ul>

        <ul> 파트너십
            <li><a href="../../views/faq/FAQ_main.html">파트너십</a></li>
        </ul>

        <ul> 이용약관
            <li><a href="../FAQ/Privacy_Policy.html">약관</a></li>
        </ul>

        <ul>결제수단
            <li><a href="#">카카오페이</a></li>
        </ul>
        <span></span>
        <span></span>
    </div>
            
</footer>


</body>
</html>