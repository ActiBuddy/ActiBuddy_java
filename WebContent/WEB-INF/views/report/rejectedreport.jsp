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

          <h2 class="sub-header">처리 완료된 신고 조회</h2>
          <div class="table-responsive">
          
          
          <div class="table-responsive">
          
          <h3>액티비티 리뷰 신고</h3>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>작성 아이디</th>
                  <th>글 제목</th>
                  <th>작성날짜</th>
                  <th>처리여부</th>
                </tr>
              </thead>
              
				<tbody>
				
                <c:forEach var="actireviewreportinfo" items="${actireviewreportinfo}">
                <tr>
                  <td>${ actireviewreportinfo.writerId }</td>
               <td><a href="../report/reportInfo?title=${ actireviewreportinfo.title }">${ actireviewreportinfo.title }</a></td>
                  <td>${ actireviewreportinfo.writeDate }</td>
                  <td>${ actireviewreportinfo.recYn }</td>
                </tr>
                </c:forEach>
				</tbody>
            </table>
            
            <h3>메이트 리뷰 신고</h3>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>작성 아이디</th>
                  <th>글 제목</th>
                  <th>작성날짜</th>
                  <th>처리여부</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="reviewreportinfo" items="${reviewreportinfo}">
                <tr>
                  <td>${ reviewreportinfo.userId }</td>
               <td><a href="../report/reportInfo?title=${ reviewreportinfo.title }">${ reviewreportinfo.title }</a></td>
                  <td>${ reviewreportinfo.date }</td>
                  <td>${ reviewreportinfo.repYn }</td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
                
                <h3>메이트 찾기 신고</h3>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>작성 아이디</th>
                  <th>글 제목</th>
                  <th>작성날짜</th>
                  <th>처리여부</th>
                </tr>
                <tbody>
              </thead>
                <c:forEach var="reviewreportinfo" items="${reviewreportinfo}">
                <tr>
                  <td>${ reviewreportinfo.userId }</td>
               <td><a href="../report/reportInfo?title=${ reviewreportinfo.title }">${ reviewreportinfo.title }</a></td>
                  <td>${ reviewreportinfo.date }</td>
                  <td>${ reviewreportinfo.repYn }</td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
                
                <h3>댓글 신고</h3>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>작성 아이디</th>
                  <th>글 제목</th>
                  <th>작성날짜</th>
                  <th>처리여부</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="reviewreportinfo" items="${reviewreportinfo}">
                <tr>
                  <td>${ reviewreportinfo.userId }</td>
               <td><a href="../report/reportInfo?title=${ reviewreportinfo.title }">${ reviewreportinfo.title }</a></td>
                  <td>${ reviewreportinfo.date }</td>
                  <td>${ reviewreportinfo.repYn }</td>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
          </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>