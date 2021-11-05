<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ACTIBUDDY</title>
	
</head>
<body>

<div class="side-all">
        
            <div class="side-1">
                <br><br><br>
                <img src="${ pageContext.servletContext.contextPath }/resources/image/profile.png" width="100px" height="100px"/>
                
                <c:if test="${ !empty sessionScope.loginMember }">
		
        			<h4 align="center"><c:out value="${ sessionScope.loginMember.userName }"/></h4>

				</c:if>
                
                
                <hr>
                <br>
				<a href="/acti/change/pwd" style="left : 20%; margin-left : 30px">비밀번호 변경</a>
                <a href="/acti/mypage/quit" style="margin-left : 70px;">회원탈퇴</a>
    
                
            </div>
            <div class="side-2">
                
                <br><br>
                <div class="menu" style="text-align: center;">
                    <a href="${ pageContext.servletContext.contextPath }/mypage/triplist">여행 내역</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/review">이용 후기</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/cart">장바구니</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/matelist">메이트 내역</a><br><br><br> 
                    <a href="${ pageContext.servletContext.contextPath }/mypage/question">문의 사항</a><br><br><br>
                 	  <c:if test="${ sessionScope.loginMember.memType eq 'U'}">
        				<a href="${ pageContext.servletContext.contextPath }/mypage/partner">액티비티<br>상품등록</a><br><br>
					</c:if>
                </div>
            </div>

            
        </div>    
  </body>
</html>