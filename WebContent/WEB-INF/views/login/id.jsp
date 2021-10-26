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
  
      <form id="joinForm" action="${ pageContext.servletContext.contextPath }/member/idcheck" method="post">
         <span><h2>아이디</h2></span>
         <input type="text" name="userId" id="userId"/>
         <label id="idResult"></label>
     <button type="submit">아이디체크</button>
         </form>
    
  </body>
</html>
