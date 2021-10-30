<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>마이페이지</title>
    <link rel="stylesheet" href="../resources/css/actibuddy.css">
    <link rel="stylesheet" href= "${ pageContext.servletContext.contextPath }/resources/css/mypage.css">

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
    
        <jsp:include page="../common/mypagesidebar.jsp"/>
        
        <div class="center-all">

            <div class="center-1">
            	<form id = "introduce" action="../mypage/main" method="post">
            	
                <textarea cols ="50" rows="6" id ="text1" name="introduce" placeholder="소개를 작성해주세요"></textarea>
        
                <hr>
        
                <textarea cols ="30" rows="2" name="favoriteActi" placeholder="선호하는 액티비티 : "></textarea>
                <button type="submit">등록하기</button>
            	
            	</form>
    
            </div>
            <div class="center-2">
				
				<c:if test="${ !empty sessionScope.loginMember }">
		
        			<h3><c:out value="${ sessionScope.loginMember.userName }"/> 님이 받은 메이트 평가</h3>

				</c:if>
				
                <hr> 

                <h3>★★★★★ </h3>
                <h4>한줄 후기 :</h4>
                <h5> 함께 했던 메이트 : </h5>
                <button type="submit"></button>
                <hr>

                <h3>★★★★☆ </h3>
                <h4>한줄 후기 :</h4>
                <h5> 함께 했던 메이트 : </h5>
                <button type="submit"></button>

                
            </div>
        </div>
        
    </div>


<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>