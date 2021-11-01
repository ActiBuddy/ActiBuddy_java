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
          
          <h3>회원 아이디</h3>
          <h5>${ userinfo.userId }</h5>
          
          <h3>성별</h3>
          <h5>${ userinfo.gender }</h5>
          
          <h3>경고 횟수</h3>
          <h5>${ userinfo.warn_count }</h5>
          
          <h3>이메일</h3>
          <h5>${ userinfo.email }</h5>
          
          <h3>생일</h3>
          <h5>${ userinfo.birth }</h5>
          
          
          <h3>회원 가입 날짜</h3>
          <h5>${ userinfo.enterDate }</h5>
          <br><br>
          
          <c:if test="${userinfo.memType eq 'U' }">
          <form id="joinpartner" action="../partner/join">
          <button>파트너십 회원 등록하기</button>
          <textarea type="text" name="userId" style="display: none">${ userinfo.userId }</textarea>
          </form>
          </c:if>
          
          <c:if test="${userinfo.memType ne 'U' }">
		  <h3>파트너십 이름</h3>
          <h5>${ partnerdetail.ownerTitle }</h5>
          <h3>사업자 번호</h3>
          <h5>${ partnerdetail.ownerNum }</h5>
          <h3>계약 시작 날짜</h3>
          <h5>${ partnerdetail.startDate }</h5>
          <h3>계약 만료 날짜</h3>
          <h5>${ partnerdetail.endDate }</h5>

          </c:if>
          
                    <button>회원 상태 변경하기</button>
          
          
          </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>