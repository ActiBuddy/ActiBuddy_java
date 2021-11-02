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
          
          <h3>문의 아이디</h3>
          <h5>${ faqList.userId }</h5>
          
          <h3>문의 내용</h3>
          <h5>${ faqList.queCon }</h5>
          
          
          <h3>문의 날짜</h3>
          <h5>${ faqList.date }</h5>
          <br><br>
          
          <h2>답변 내용</h2>
          <form action="${ pageContext.servletContext.contextPath }/faq/answer" method="post">
          
          <c:if test="${ !empty faqList.answer }">
          <textarea class="answerfaq" name="answer" cols="130" rows="10" readonly>${ faqList.answer }</textarea>
          </c:if>
          
          
          <c:if test="${ empty faqList.answer }">
          <textarea class="answerfaq" name="answer" cols="130" rows="10"></textarea>
          <textarea style="display: none;" name="queTitle">${ faqList.queTitle }</textarea>
          <button type="submit"> 제출하기</button>
          </c:if>
		 
		  </form>	
          </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>