<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  		
  		<br><br><br><br><br><br><br><br><br>
  		<c:if test="${ !empty memberfindid.userId}">
  		<div class="signup">
         <span><h2>찾으시는 아이디는 ${memberfindid.userId} 입니다.</h2></span>
         <a href="${ pageContext.servletContext.contextPath }/member/login">로그인하러 가기</a>
         </div>
         </c:if>

         <c:if test="${ !empty memberfindpwd.pwd}">
         <div class="signup">
         <span><h2>찾으시는 아이디는 ${memberfindpwd.pwd} 입니다.</h2></span>
         <a href="${ pageContext.servletContext.contextPath }/member/login">로그인하러 가기</a>
    	</div>
    	</c:if>
    	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    	
    	</main>
  </body>
</html>
