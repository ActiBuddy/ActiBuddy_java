<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>관리자 페이지</title>

    <link href="${pageContext.servletContext.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <link href=".${ pageContext.servletContext.contextPath }/resources/css/dashborad.css" rel="stylesheet">
    <script src="${ pageContext.servletContext.contextPath }/resources/js/ie-emulation-modes-warning.js"></script>
       <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>
  <script>
	
	$(function(){			
		$('#userId').on('keyup',function(){
		   
			let id = $('#userId').val(); //id값이 "id"인 입력란의 값을 저장
	        
			console.log(id);
			 $.ajax({
	            url:'${ pageContext.servletContext.contextPath }/member/idcheck', //Controller에서 인식할 주소
	            type:'get',
	            data:{userId:id},
	            success:function(result){     //callback
	                
	            	console.log(result);
	            	
					if(result > 0 ){
						$('#idResult1').css('display', 'block').css('color','red');
						$('#idResult2').css('display', 'none');
						$('#userId').focus();

					} else {
						$('#idResult2').css('display', 'block');
						$('#idResult1').css('display', 'none');
					}
	            },
	            error:function(){
 	           }
	        }); 
		});
	});
</script>

  <body> 
    
    <jsp:include page="../common/managersidebar.jsp"/>

          <h2 class="sub-header">매니저 아이디 생성</h2>
          
          <form id="joinForm" action="../manager/regist" method="post">
         
         <span><h2>아이디</h2></span>
         <input type="text" name="userId" id="userId" placeholder="아이디를 입력해주세요!"/>
         <label id="idResult1" style="display: none">중복된 아이디 입니다. 다른 아이디를 입력해주세요!</label>
         <label id="idResult2" style="display: none">사용가능한 아이디 입니다.</label>
         
         <span><h2>비밀번호</h2></span>
         <input type="password" name="pwd" id="userPwd1" placeholder="비밀번호를 입력해주세요!"/>

         <span><h2>비밀번호 확인</h2></span>
         <input type="password" name="name" id="userPwd2" placeholder="비밀번호를 확인해주세요!"/>
         <label id="pwdREsult"></label>
         
		<span><h2>매니저 파트 선택</h2></span>
		<select name="managerPart">
          	<option> 선택해주세요 </option>
          	<option value="report">report</option>
          	<option value="member">member</option>
          	<option value="FAQ">FAQ</option>
          </select>

		<br><br><br><br>
          <div>
           <button type="submit" class="login_btn">관리자 아이디 만들기</button>
         </div>
         
         </form>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>