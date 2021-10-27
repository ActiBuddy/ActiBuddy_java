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
    
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_member.html">회원 관리</a></li>
            <li><a href="${ pageContext.servletContext.contextPath }/member/user">전체 회원 조회</a></li>
            <li><a href="#">경고 회원 조회</a></li>
            <li><a href="#">탈퇴 회원 조회</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_partnership(1).html">파트너십 관리</a></li>
            <li><a href="">파트너십 플랫폼 조회</a></li>
            <li><a href="">파트너십 문의 접수</a></li>
            <li><a href="">파트너십 진행 상황</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_declaration.html">신고 접수</a></li>
            <li><a href="">메이트 매칭</a></li>
            <li><a href="">메이트 평가</a></li>
            <li><a href="">메이팅 후기</a></li>
            <li><a href="">액티비티 후기</a></li>
            <li><a href="">댓글</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_manager.html">관리자 관리</a></li>
            <li><a href="">관리자 권한 부여</a></li>
            <li><a href="">관리자 파트 부여</a></li>
          </ul>
        </div>

          <h2 class="sub-header">전체 회원 조회</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>회원 번호</th>
                  <th>아이디</th>
                  <th>닉네임</th>
                  <th>가입일자</th>
                  <th>경고 건수</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="userId" items="${memberList}">
                <tr>
                	
                  <td>${ userId.userId }</td>
                  <td>${ userId.userName }</td>
                  <td>${ userId.warn_count }</td>
                  <td>${ userId.birth }</td>
                  <td>${ userId.memType }</td>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>

            <nav>
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>

          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.min.js"></script>
  </body>
</html>