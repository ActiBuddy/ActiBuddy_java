<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>문의 아이디</th>
                  <th>문의 제목</th>
                  <th>문의 날짜</th>
                  <th>문의 처리 여부</th>
                  
                </tr>
              </thead>
              <tbody>
              
                <c:forEach var="userId" items="${faqList}">
                <tr>
                  <td>${ userId.userId }</td>
                  <td><a href="../faq/detail?queTitle=${ userId.queTitle }">${ userId.queTitle }</a></td>
<%--                   <td><fmt:formatDate pattern="hh시-mm-ss" value="${ userId.date }"/> </td> --%>
                  <td>${ userId.date }</td>
                  <td>${ userId.answerYn }</td>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>

            

          </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>