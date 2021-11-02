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


  </head>

  <body> 
    
    <jsp:include page="../common/managersidebar.jsp"/>

          <h2 class="sub-header">파트너 조회</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>유저이름</th>
                  <th>회원 아이디</th>
                  <th>회원 타입</th>
                </tr>
              </thead>
              <tbody>
              
                <c:forEach var="userId" items="${managerList}">
                <tr>
                  <td>${ userId.userName }</td>
                  <td><a href="../manager/userInfo?userId=${ userId.userId }">${ userId.userId }</a></td>
                  <td>${ userId.memType }</td>
                </tr>
                </c:forEach>
              </tbody>
            </table>


          </div>
           <jsp:include page="../common/page.jsp"/>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>