<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../../resources/css/pay2.css" rel="stylesheet">


    <title>결제 화면</title>
  </head>
  <body> 
    <nav class="navbar">
      <ul class="navbar_menu">
          <a href="../main/main.html"><img src="../../resources/image/actibuddylogo.png" class="nav_logo"></a>
          <li class="dropbox"><a href="../activity/activity.html">액티비티</a></li>
          <li class="dropbox"><a href="#">메이팅</a></li>
          <li><input type="text" placeholder="Search"></li>
          <li><button type="button" onclick="location.href='../activity/searchActivity.html'">Submit</button></li>
      </ul>

      <ul class="navbar_link">
          <li><a href="../FAQ/FAQ_main.html">FAQ</a></li>
          <li><a href="">회원가입</a></li>
          <li><button type="button" class="login_btn" onclick="location.href='main.html'">로그인</button></li>
      </ul>
  </nav>



<!---------------------------------메인------------------------------------------------->

<main>

    <br><br><br>

    <div id="top">
        <div id="circle1">
            <h4 id="info">상품 선택</h4>
        </div>
            <div id="dott1"></div>
            <div id="dott1"></div>
            <div id="dott1"></div>
        <div id="circle2">
            <h4 id="info">예약 정보 입력</h4>
        </div >
            <div id="dott2"></div>
            <div id="dott2"></div>
            <div id="dott2"></div>
        <div id="circle3">
            <h4 id="info">결제 진행</h4>
        </div>
    </div>

    <div id="middle"> <br>
        <h2 id="progress"> 결제 진행하기 </h2> <hr>
        <h3 id="warning">모든 신용카드 정보는 암호화되어 보호되며 안전하게 처리됩니다.</h3>
        <br> <br> <br> <br>

        <div id="kakao-pay">
            <img id="img" src="../../resources/image/pay_kakaopay.png"/>
        </div>

        <br><br><hr><br>

        <h5 id="terms">"바로 결제" 버튼을 클릭하면 이용약관과 취소정책을 확인하고 동의한 것으로 간주됩니다. 
            <a href="../faq/Privacy_Policy.html">이용약관</a> & <a href="../faq/FAQ_main.html">취소 정책</a></h5>

        <a id="a" href="../pay/pay3.html">
            <input id="next" type="submit" value="바로 결제">
        </a>

    </div>

</main>



<!---------------------------------하단바-------------------------------------->

<footer>
    <div class="footer">
        <span></span>

        <ul>2021 액티버디</ul>
        <ul> 회사소개
            <li><a href="../introduce/introduce.html">액티버디소개</a></li>
            <li><a href="../mypage/mypage.html">마이페이지</a></li>

            </ul>

        <ul> 파트너십
            <li><a href="../partnership/partnership.html">파트너십</a></li>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
