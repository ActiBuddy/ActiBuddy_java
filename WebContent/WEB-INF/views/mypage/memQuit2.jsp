<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>memQuit2</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">
</head>
<body>

       <jsp:include page="../common/menubar.jsp"/>

    <div class="logo" >
    
        <img src="../resources/image/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>

    <c:if test="${ !empty sessionScope.loginMember }">
		<div class="page-text">

        	<h2><c:out value="${ sessionScope.loginMember.userName }"/>님의 마이페이지</h2>
        	
		</div>
	</c:if>



    <div class="body-all">
    
        <div class="side-all">
        
            <div class="side-1">
                <br><br><br>
                <img src="${ pageContext.servletContext.contextPath }/resources/image/profile.png" width="100px" height="100px"/>
                
                <c:if test="${ !empty sessionScope.loginMember }">
		
        			<h4 align="center"><c:out value="${ sessionScope.loginMember.userName }"/></h4>

				</c:if>
                
                
                <hr>
                <br>

                <a href="/acti/mypage/quit" id="quit">회원탈퇴</a>
    
                
            </div>

        </div>

        <div class="q-center-all">

            <div class="q-center-1">

                <div class="q-text2">

                    <h1>회원 탈퇴 확인</h1><br>
                    
                    <h3>해당 계정을 삭제하시려면 '확인'버튼을 클릭하세요</h3>
                    
                    <img src="../resources/image/profile.png" width="120px" height="120px"/>

                    <h4>해씨초코볼 <br><br> actibuddy11@greedy.com</h4>

                    <br>

                <button type="submit">확인</button>
                <br>
                <button type="submit">취소</button>
    
                </div>
            
            </div>
        </div>    

    </div>

    <!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>
    
</body>
</html>