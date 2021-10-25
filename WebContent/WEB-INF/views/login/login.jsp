<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<link href="../resources/css/login.css" rel="stylesheet" />
   <!--  <link href="../resources/css/actibuddy.css" rel="stylesheet" /> -->

    <title>main</title>
  </head>
  <body>
       <jsp:include page="../common/menubar.jsp"/>


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

   <jsp:include page="../common/footer.jsp"/>
    </main>
  </body>
</html>
