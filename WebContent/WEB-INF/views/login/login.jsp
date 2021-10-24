<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="../resources/css/login.css" rel="stylesheet" />
    <link href="../resources/css/actibuddy.css" rel="stylesheet" />
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

    <title>main</title>
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
          <button
            type="button"
            class="login_btn"
            onclick="location.href='../login/login.html'"
          >
            로그인
          </button>
        </li>
      </ul>
    </nav>
    <main class="wrapper">
      <div>
        <img src="../resources/image/actibuddylogo.png" class="mainlogo" />
      </div>

      <div class="signup">
      
      
        <form id="loginForm" action="../member/loging" method="post">
          <div class="signup1">
            <input type="text" placeholder="아이디" name="memberId" />
          </div>
          <div class="signup1">
            <input type="password" placeholder="비밀번호" name="memberPwd" />
          </div>
          <div class="signup2">
            <button type="submit" value="로그인" id="login">로그인</button>
          </div>
        </form>
        
        
        <h3><a href="../singup/signup.html">회원가입</a></h3>
      </div>

      <footer>
        <div class="footer">
          <span></span>

          <ul>
            2021 액티버디
          </ul>
          <ul>
            회사소개
            <li><a href="../introduce/introduce.html">액티버디소개</a></li>
            <li><a href="../mypage/mypage.html">마이페이지</a></li>
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
    </main>
  </body>
</html>
