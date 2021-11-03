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

          <h2 class="sub-header">관리자 조회</h2>
          <div class="table-responsive">
          
          <h3>관리자 아이디</h3>
          <h5>${ managerinfo.userId }</h5>
          
          <h3>담당파트</h3>
          <h5>${ managerinfo.manPart }</h5>
          
          <br><br>
          
          <h3>담당 파트 변경하기</h3>
         
          
          <c:if test="${ managerinfo.manPart eq 'report' }">
          <form action="../manager/managerinfo" method="post">
          <textarea style="display: none;" name="userId">${ managerinfo.userId }</textarea>
          <select name="managerPart">
          	<option> 선택해주세요 </option>
          	<option value="member">MEMBER</option>
          	<option value="FAQ">FAQ</option>
          </select>
          <button type="submit">바꾸기</button>
          </form>
          </c:if>
          
          <c:if test="${ managerinfo.manPart eq 'member' }">
          <form action="../manager/managerinfo" method="post">
          <textarea style="display: none;" name="userId">${ managerinfo.userId }</textarea>
          <select name="managerPart">
          	<option> 선택해주세요 </option>
          	<option value="report">report</option>
          	<option value="FAQ">FAQ</option>
          </select>
          <button type="submit">바꾸기</button>
          </form>
          </c:if>
          
          <c:if test="${ managerinfo.manPart eq 'FAQ' }">
          <form action="../manager/managerinfo" method="post">
          <textarea style="display: none;" name="userId">${ managerinfo.userId }</textarea>
          <select name="managerPart">
          	<option> 선택해주세요 </option>
          	<option value="report">report</option>
          	<option value="member">member</option>
          </select>
          <button type="submit">바꾸기</button>
          </form>
          </c:if>
          
          </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>