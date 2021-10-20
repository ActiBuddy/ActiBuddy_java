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
    <link href="../../resources/css/pay.css" rel="stylesheet">


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
        <h2 id="enter"> 정보 입력하기 </h2> <hr>
        <h3 id="warning">정확한 정보를 입력하셨는지 다시 한번 확인해주세요!! <br>
             결제 단계로 넘어가신 후에는 예약 정보를 변경할 수 없어요.</h3>
        <br> <br>

        <h2 id="confirm"> 예약 정보 </h2> <hr> <br>
        <img id="img" src="../../resources/image/activity_info/Activity_info_scuba_diving(1).png"> <br>
        <h5 id="activity-name">제주도 감귤마을 스쿠버다이빙</h5> <br>
        <h6 id="option">체험 다이빙</h6> <br><br><br><br>

        <h5 id="date"> 날짜 : 2021년 10월 5일 오전 13:00</h5>
        <h5 id="person"> 인원 : 3</h5>

        <h2 id="all">총금액: </h2>
        <h2 id="price"> ₩999,999</h2> <br> <hr>

        <h2 id="concat"> 예약자 연락처 </h2>
        <h5 id="guide"> 예약 변경 사항이 있는 경우 안내해드립니다. </h5>

        <br><br><br><br>

        <form>
            <label id="firstname">이름 : </label>
            <input type="text" size="20" id="firstname" placeholder="길동">
          
            <label id="lastname">성 : </label>
            <input type="text" size="20" id="lastname" placeholder="홍">
            
            <br><br><br><br>

            <label id="phone">전화번호 : </label>
            <input type="text" size="20" id="phone" placeholder="010-1234-5678">

            <label id="email">이메일 : </label>
            <input type="text" size="20" id="email" placeholder="hong@greedy.com">
        </form>

        <br><br><br><br>

        <a id="a" href="../pay/pay2.html">
        <input id="progress" type="submit" value="결제 진행">
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
