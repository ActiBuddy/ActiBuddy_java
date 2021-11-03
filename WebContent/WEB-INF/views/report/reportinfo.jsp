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
          
          <h3>리뷰 번호</h3>
          <h5>${ reviewreportinfo.num }</h5>
          <h5>${ actireviewreportinfo.num }</h5>
          
          <h3>리뷰 제목</h3>
          <h5>${ reviewreportinfo.title }</h5>
          <h5>${ actireviewreportinfo.title }</h5>
          
          <h3>리뷰 내용</h3>
          <h5>${ reviewreportinfo.content }</h5>
          <h5>${ actireviewreportinfo.content }</h5>
          
          <h3>리뷰 작성 날짜</h3>
          <h5>${ reviewreportinfo.date }</h5>
          <h5>${ actireviewreportinfo.writeDate }</h5>
          
          <h3>신고받은 유저 정보</h3>
          <h5>${ reviewreportinfo.userId }</h5>
          <h5>${ actireviewreportinfo.writerId }</h5>
          
          <br><br>
          
          <form action="../report/reject" method="post">
         
		  <textarea type="text" name="title" style="display:none">${ reviewreportinfo.title }</textarea>
		  <textarea type="text" name="title1" style="display:none">${ actireviewreportinfo.title }</textarea>
          
          <button type="submit">신고 반려</button>
          </form>
          
          <form action="../report/accept" method="post">
          <textarea type="text" name="title" style="display: none">${ reviewreportinfo.title }</textarea>
          <textarea type="text" name="userId" style="display: none">${ reviewreportinfo.userId }</textarea>
          <textarea type="text" name="title1" style="display: none">${ actireviewreportinfo.title }</textarea>
          <textarea type="text" name="userId1" style="display: none">${ actireviewreportinfo.writerId }</textarea>
          <button type="submit">신고 수리</button>
          </form>
          
          
          
          </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>