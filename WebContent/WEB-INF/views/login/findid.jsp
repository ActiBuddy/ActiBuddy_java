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

    <title>main</title>
  </head>
  <body>
  		<main class="wrapper">
  		
  		<div class="signup">
      <form id="joinForm" action="${ pageContext.servletContext.contextPath }/member/findid" method="post">
         <span><h2>아이디 찾기</h2></span>
         <span><h5>회원가입때 입력하신 이메일을 입력해주세요.</h5></span>
         <input type="text" name="email" id="email"/>
	     <button type="submit">아이디 찾기</button>
         </form>
    	<br><br><br><br><br><br>
      <form id="joinForm" action="${ pageContext.servletContext.contextPath }/member/findpwd" method="post">
         <span><h2>비밀번호 찾기</h2></span>
         <span><h5>아이디를 입력해주세요.</h5></span>
         <input type="text" name="userId" id="email"/>
         <span><h5>회원가입때 입력하신 이메일을 입력해주세요.</h5></span>
         <input type="text" name="email" id="email"/>
	     <button type="submit">비밀번호 찾기</button>
         </form>
    	</div>
    	
    	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    	
    	</main>
    	
  </body>
</html>
