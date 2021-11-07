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
  <body> 
    
    <jsp:include page="../common/managersidebar.jsp"/>

         <h2 class="sub-header">관리자 파트 조회</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
             	 <tr>
                 	 <th>REPORT 관리자</th>
                  </tr>
              </thead>
              
              <tbody>
                <c:forEach var="user" items="${memberList}">
             		<c:if test="${ user.manPart eq 'report'}">
             		   <tr>
             		  	  <td>
             				<a href="../manager/managerinfo?managerId=${ user.userId }">${ user.userId }</a>
             			  </td>
             			<tr>
               		</c:if>
                </c:forEach>
              </tbody>
             </table>
              
             <table class="table table-striped">
              <thead>
                <tr>
                  <th>MEMBER 관리자</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="user" items="${memberList}">
             		<c:if test="${ user.manPart eq 'member'}">
             		   <tr>
             		  	  <td>
             				<a href="../manager/managerinfo?managerId=${ user.userId }">${ user.userId }</a>
             			  </td>
             			<tr>
               		</c:if>
                </c:forEach>
              </tbody>
            </table>
                 
            <table class="table table-striped">     
              <thead>
                <tr>
                  <th>FAQ 관리자</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="user" items="${memberList}">
             		<c:if test="${ user.manPart eq 'FAQ'}">
             		   <tr>
             		  	  <td>
             				<a href="../manager/managerinfo?managerId=${ user.userId }">${ user.userId }</a>
             			  </td>
             			<tr>
               		</c:if>
                </c:forEach>
              </tbody>
            </table>
          </div>
          
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <script src="../../resources/js/holder.js"></script>
  </body>
</html>