<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>관리자 페이지</title>

  </head>
  <script>
  		$(function(){
  			
	  	/* 	$('select[name=interest]').change(function(){
	  			$('select[name=] option:selected').each(function(){
	  				
	  				console.dir(this);
	  			});
	  		}); */
	  		
	  		$('select[name=interest]').change(function(e){
	  			let checkValue;
	  			let userId;
	  			$(e.target.children).each(function(){
	  				if(this.selected == true){
	  					ch
	  				} else{
	  					}	
	  				}
	  			$.ajax({
	  				url:'${ pageContext.servletContext.contextPath }/manager/part', //Controller에서 인식할 주소
	  				type:'post',
	  				data:{userId:id, manpart:manpart},
	  				success:function(result){
	  				
	  				
	  			});
	  		});
  		});
  		
  		
  		
  
  </script>
  <body> 
    
    <jsp:include page="../common/managersidebar.jsp"/>

         <h2 class="sub-header">관리자 파트 조회</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>아이디</th>
                  <th>파트</th>
                  <th>파트 변경</th>
                </tr>
              </thead>
              <tbody>
              
              
                <c:forEach var="user" items="${memberList}">
                <tr>
                  <td>${ user.userId }</td>
                  <td>${ user.manPart }</td>
                  <td>
                  <!-- <form action=""> -->
                  <select id="interest" name="interest" size="1">
					<option name="inten" value="report">신고</option>
					<option name="inten" value="manager">회원</option>
					<option name="inten" value="FAQ">문의접수</option>
				</select>
				<!-- </form> -->
				</td>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
          
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <script src="../../resources/js/holder.js"></script>
  </body>
</html>