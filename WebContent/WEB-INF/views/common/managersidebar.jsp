<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active">회원 관리</li>
            <li><a href="${ pageContext.servletContext.contextPath }/manager/main">일반 회원 조회</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/manager/partnermember">파트너쉽 회원 조회</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/manager/warnmember">경고 회원 조회</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active">파트너십 관리</li>
            <li><a href="${ pageContext.servletContext.contextPath }/faq/partner">파트너십 문의</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/faq/common">일반 문의</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active">신고 접수</li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/matefind">메이트 매칭</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/matereview">메이트 평가</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/matingreview">메이팅 후기</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/actireview">액티비티 후기</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/report/comment">댓글</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active">관리자 관리</li>
            <li><a href="${ pageContext.servletContext.contextPath }/member/grade">관리자 권한 부여</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="${ pageContext.servletContext.contextPath }">메인페이지</a></li>
          </ul>
        </div>
</body>
</html>