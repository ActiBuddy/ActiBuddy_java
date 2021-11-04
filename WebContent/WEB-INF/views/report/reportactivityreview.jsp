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

    <link href="../../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../../resources/css/dashborad.css" rel="stylesheet">
    <script src="../../resources/js/ie-emulation-modes-warning.js"></script>
  </head>

  <body> 
    
   <jsp:include page="../common/managersidebar.jsp"/>

         <span> <h2 class="sub-header">액티비티 후기 신고 접수</h2></span>
          <span> <form action="../report/rejected?title=${ actireviewreportinfo.title }" method="get">
          	<textarea type="text" name="title" style="display:none">${ actireviewreportinfo.title }</textarea>
         	 <button type="submit">처리 완료된 신고 보기</button></span>
          <div class="table-responsive">
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
                <c:forEach var="actireviewrep" items="${actireviewrep}">
                <tr>
                  <td>${ actireviewrep.writerId }</td>
               <td><a href="../report/reportInfo?title=${ actireviewrep.title }">${ actireviewrep.title }</a></td>
                  <td>${ actireviewrep.writeDate }</td>
                  <td>${ actireviewrep.recYn }</td>
                </tr>
                </c:forEach>
              </tbody>
              
            </table>
          </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../resources/js/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>