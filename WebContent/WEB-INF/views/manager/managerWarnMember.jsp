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

          <h2 class="sub-header">경고 회원 조회</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>회원 이름</th>
                  <th>아이디</th>
                  <th>경고 건수</th>
                  <th>회원타입</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="userId" items="${managerList}">
                <tr>
                	
                  <td>${ userId.userName }</td>
                  <td>${ userId.userId }</td>
                  <td>${ userId.warn_count }</td>
                  <td>${ userId.memType }</td>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>

	<jsp:include page="../common/paging.jsp"/>
           
            <div class="search">
        <form id="searchForm" action="${ pageContext.servletContext.contextPath }/manager/warnmember" method="get">
               <input type="hidden" name="currentPage" value="1">
               <input type="search" id="searchValue" name="searchValue" placeholder="이름을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
               <button type="submit" class="searchbutton">검색하기</button>
		</form>
        </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>