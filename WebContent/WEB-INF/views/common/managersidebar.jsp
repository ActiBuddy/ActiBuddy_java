<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link href="${pageContext.servletContext.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <link href=".${ pageContext.servletContext.contextPath }/resources/css/dashborad.css" rel="stylesheet">
    <script src="${ pageContext.servletContext.contextPath }/resources/js/ie-emulation-modes-warning.js"></script>
        <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
    
</head>
<body>


<!-- <div class="container-fluid">
      <div class="row"> -->
        <div class="col-sm-3 col-md-2 sidebar">

		<c:if test="${ sessionScope.loginManager.manPart eq 'super' || sessionScope.loginManager.manPart eq 'member'}">
          <ul class="nav nav-sidebar">
            <li class="active">회원 관리</li>
            <li><a href="${ pageContext.servletContext.contextPath }/manager/main">일반 회원 조회</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/manager/partnermember">파트너쉽 회원 조회</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/manager/warnmember">경고 회원 조회</a></li>
          </ul>
          </c:if>
          
          <c:if test="${ sessionScope.loginManager.manPart eq 'super' || sessionScope.loginManager.manPart eq 'FAQ'}">
          <ul class="nav nav-sidebar">
            <li class="active">문의 관리</li>
            <li><a href="${ pageContext.servletContext.contextPath }/faq/partner">파트너십 문의</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/faq/common">일반 문의</a></li>
          </ul>
          </c:if>
          
          <c:if test="${ sessionScope.loginManager.manPart eq 'super' || sessionScope.loginManager.manPart eq'report'}">
          <ul class="nav nav-sidebar">
            <li class="active">신고 접수</li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/actireview">액티비티 후기</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/matefind">메이트 매칭</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/matingreview">메이팅 후기</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/comment">댓글</a></li>
          </ul>
          </form>
          </c:if>
          
          <c:if test="${ sessionScope.loginManager.manPart eq 'super'}">
          <ul class="nav nav-sidebar">
            <li class="active">관리자 관리</li>
            <li><a href="${ pageContext.servletContext.contextPath }/manager/regist">관리자 아이디 생성</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/member/grade">관리자 권한 부여</a></li>
          </ul>
          </c:if>
          
          <ul class="nav nav-sidebar">
            <li class="active">메인페이지로 가기</li>
            <li class="active"><a href="${ pageContext.servletContext.contextPath }">메인페이지</a></li>
          </ul>
          
          <c:if test="${ !empty sessionScope.loginMember }">
			<h5><c:out value="${ sessionScope.loginMember.userName }"/>님의 방문을 환영합니다.</h5>
		  </c:if>
        </div>
</body>
</html>