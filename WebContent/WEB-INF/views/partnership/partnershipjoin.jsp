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

    <title>관리자 페이지</title>

    <link href="${pageContext.servletContext.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <link href=".${ pageContext.servletContext.contextPath }/resources/css/dashborad.css" rel="stylesheet">
    <script src="${ pageContext.servletContext.contextPath }/resources/js/ie-emulation-modes-warning.js"></script>

  </head>

  <body> 
    
    <jsp:include page="../common/managersidebar.jsp"/>

          <h2 class="sub-header">파트너 문의 조회</h2>
          <div class="table-responsive">
          
	   	  <form id="partnershipForm" action="${ pageContext.servletContext.contextPath }/partner/join" method="post">
          <h3>회원 아이디</h3>
          <h5>${ userId }</h5>
          <textarea type="text" name="userId" style="display: none">${ userId }</textarea>
          
          <h3>회사 이름</h3>
		  <input type="text" name="ownerTitle">
			          
          <h3>사업자 번호</h3>
          <input type="text" name="ownerNum">
          
          <h3>계약 시작 날짜</h3>
          <input type="date" name="startDate">
          
          <h3>계약 종료 날짜</h3>
          <input type="date" name="endDate">
          
          <button type="submit">제출</button>
         
		  </form>	
          </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>