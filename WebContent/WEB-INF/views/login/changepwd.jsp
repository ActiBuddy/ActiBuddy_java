<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="../resources/css/login.css" rel="stylesheet" />
   <link href="../resources/css/actibuddy.css" rel="stylesheet" />
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>main</title>
  </head>
  <body>
  		<main class="wrapper">
  		
  		<div class="signup">
      	 <form id="joinForm" action="${ pageContext.servletContext.contextPath }/change/pwd" method="post">
         <span><h2>비밀번호 변경</h2></span>
         <span><h5>새로운 비밀번호를 입력해주세요.</h5></span>
         <input type="password" name="pwd" id="email"/>
         <span><h5>비밀번호 확인</h5></span>
         <input type="password" name="pwd2" id="email"/>
         <input type="hidden" name="userId" value="${ sessionScope.loginMember.userId }">
	     <button type="submit">비밀번호 변경</button>
         </form>
    	</div>
    	
    	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    	
    	</main>
    	
    	<script>
    	$(function() {
    		if('${ result }' != "" && '${ result }' != null ){
	    		alert('입력하신 비밀번호가 서로 다릅니다');
	    	}  
	    	
	    	if('${ success }' != "" && '${ success }' != null){
	    		alert('비밀번호가 정상적으로 변경되었습니다');
	    		<%request.getSession().invalidate();%>
	    		location.href='/acti/member/login'
	    	}
		});
    	</script>
    	
  </body>
</html>
