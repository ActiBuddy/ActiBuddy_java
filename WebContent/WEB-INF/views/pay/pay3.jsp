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
    <link href="../../resources/css/pay3.css" rel="stylesheet">


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
        <div id="circle">
            <h4 id="info">결제 완료</h4>
        </div>
    </div>

    <div id="middle"><br>
        <h2 id="confirm"> 예약 정보 </h2> <hr>

        <br> <br>

        <img id="img" src="../../resources/image/activity_info/Activity_info_scuba_diving(1).png"> <br>
        <h5 id="activity-name">제주도 감귤마을 스쿠버다이빙</h5> <br>
        <h6 id="option">체험 다이빙</h6> <br><br><br><br>

        <h5 id="date"> 날짜 : 2021년 10월 5일 오전 13:00</h5>
        <h5 id="person"> 인원 : 3</h5>

        <h2 id="all">총금액: </h2>
        <h2 id="price"> ₩999,999</h2> <br> <hr>

        <h5 id="completion">카카오 페이 결제가 정상적으로 완료되었습니다.</h5> <br>
        <h5 id="payment">결제 일시 : 2021-10-05T22:01:43</h5>

        <a id="a" href="../main/main.html">
            <input id="next" type="submit" value="확인">
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
