<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>액티비티 소개</title>
    <link rel="stylesheet" href="../resources/css/actibuddy.css">
    <link href="../resources/css/introduce.css" rel="stylesheet">

  </head>
  <body>
    <nav class="navbar">
      <ul class="navbar_menu">
        <a href="../main/main.html"
          ><img src="../resources/image/actibuddylogo.png" class="nav_logo"
        /></a>
        <li class="dropbox">
          <a href="../activity/activity.html">액티비티</a>
        </li>
        <li class="dropbox"><a href="../Mate/matemain.html">메이팅</a></li>
        <li><input type="text" placeholder="Search" /></li>
        <li>
          <button
            type="button"
            onclick="location.href='../activity/searchActivity.html'"
          >
            Submit
          </button>
        </li>
      </ul>

      <ul class="navbar_link">
        <li><a href="../FAQ/FAQ_main.html">FAQ</a></li>
        <li><a href="../singup/signup.html">회원가입</a></li>
        <li>
            <li><button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button></li>
        </li>
      </ul>
    </nav>

    <div class="faq">
      <img src="../resources/image/introduce.png" />
    </div>

    <main_intro>
      <div class="detail">
        <h1>VAMOS CONMIGO!!</h1>
        <h3>다들 너도나도 액티비티 여행 떠나는데 일일이 알아보기 귀찮을 때!</h3>
        <h3>
          나와 딱 맞는 메이트와 지금 이순간에 즐길 수 있는 액티비티 추천으로
          예약까지 한번에 하자!
        </h3>
        <h1 style="margin-bottom: 150px">우리 같이 떠날래?</h1>
      </div>

      <div class="detail1">
        <div>
          <h1>내가 하고 싶을때!</h1>
          <h3>아침부터 심야, 평일부터 주말까지</h3>
        </div>
        <div>
          <h1>내가 하고 싶은 곳에서!</h1>
          <h3>서울부터 제주도까지!</h3>
        </div>
        <div>
          <h1>내가 여행하고 싶은 사람들과!</h1>
          <h3>혼자 또는 원하는 사람들과 함께!</h3>
        </div>
      </div>

      <div class="image">
        <img src="../resources/image/intro4.gif" />
      </div>

      <div class="detail2">
        <h1>어디서든 편리하게!</h1>
        <h3>
          여행지에서도 헤매지 않도록 항상 빠른 답변을 제공하려 노력하고
          있습니다.
        </h3>
      </div>

      <div class="detail3">
        <div>
          <img src="../../resources/image/intro1.png" class="image" />
        </div>
        <div style="text-align: center">
          <h1 style="margin-top: 300px">원하는곳은 어디든!</h1>
          <h3>
            서울 근교부터 인기많은 휴양지인 제주도까지 액티 버디는 국내 모든곳의
          </h3>
          <h3>액티비티를 소개합니다!</h3>
        </div>
      </div>
      <div class="detail3">
        <div style="text-align: center">
          <h1 style="margin-top: 250px">그 어떠한 액티비티도!</h1>
          <h3>수상액티비티부터 겨울에만 즐길수 있는 액티비티,</h3>
          <h3>실내에서만 즐길수 있는 액티비티도 한 번에!</h3>
        </div>
        <div><img src="../resources/image/intro2.png" class="image" /></div>
      </div>
      <div class="detail3">
        <div><img src="../resources/image/intro3.png" class="image" /></div>
        <div style="text-align: center">
          <h1 style="margin-top: 300px">액티버디와 함께라면!</h1>
          <h3>
            언제 어디서든 함께 즐길수 있는 액티비티지금 가입하러 가실까요?
          </h3>
        </div>
      </div>
    </main_intro>

    <footer>
      <div class="footer">
        <span></span>

        <ul>
          2021 액티버디
        </ul>
        <ul>
          회사소개
          <li><a href="/acti/introduce">액티버디소개</a></li>
          <li><a href="/acti/mypage/main">마이페이지</a></li>
        </ul>

        <ul>
          파트너십
          <li><a href="../partnership/partnership.html">파트너십</a></li>
        </ul>

        <ul>
          이용약관
          <li><a href="../FAQ/Privacy_Policy.html">약관</a></li>
        </ul>

        <ul>
          결제수단
          <li><a href="#">카카오페이</a></li>
        </ul>
        <span></span>
        <span></span>
      </div>
    </footer>
  </body>
</html>
