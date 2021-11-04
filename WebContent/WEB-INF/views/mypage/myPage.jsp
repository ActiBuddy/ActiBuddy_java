<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <c:if test="${ tripList.introduce eq null }">
            
            	<form id = "introduce" action="../mypage/main" method="post">
            	
                <textarea cols ="50" rows="6" id ="text1" name="introduce" placeholder="소개를 작성해주세요"></textarea>
        
                <hr>
        
                <textarea cols ="30" rows="2" name="favoriteActi" placeholder="선호하는 액티비티를 작성해주세요 "></textarea>
                <button type="submit">등록하기</button>
            	
            	</form>
            	
            </c:if>

				<c:if test="${ tripList.introduce ne null }">
	            	<form id = "introduce" action="../mypage/main" method="post">
	            
	            	
		           <textarea cols ="50" rows="6" id ="text1" name="introduce" placeholder="${ tripList.introduce }"></textarea>
	
	                <hr>
	        
	                <textarea cols ="30" rows="2" name="favoriteActi" placeholder="${tripList.favoriteActi }"></textarea>
	                <button type="submit">수정하기</button>
	            	
	            	</form>
				</c:if>

            </div>
            
            <div class="center-2">
				
				<c:if test="${ !empty sessionScope.loginMember }">
		
        			<h3><c:out value="${ sessionScope.loginMember.userName }"/> 님이 받은 메이트 평가</h3>

				</c:if>
				
                <hr> 
                <c:if test=" ${ mateScore } != null and  ${ mateScore} != ''">
				<c:forEach var="size" begin="0" end="${ fn:length(mateScore)-1}">
				
			  <c:choose>
			  <c:when test="${ mateScore[size].scoreStar == 1 }">
				 <h2 id="foryellow">★</h2><h2 id="forgray">★★★★</h2>
			  </c:when>
			  <c:when test="${ mateScore[size].scoreStar == 2 }">
			     <h2 id="foryellow">★★</h2><h2 id="forgray">★★</h2>
			  </c:when>
			  <c:when test="${ mateScore[size].scoreStar == 3 }">
			     <h2 id="foryellow">★★★</h2><h2 id="forgray">★★</h2>
			  </c:when>
			  <c:when test="${ mateScore[size].scoreStar == 4 }">
			     <h2 id="foryellow">★★★★</h2><h2 id="forgray">★</h2>
			  </c:when>
			  <c:when test="${ mateScore[size].scoreStar == 5 }">
				<h2 id="foryellow">★★★★★</h2>
			  </c:when>
			 </c:choose>
				
                <h4>한줄 후기 : <c:out value="${mateScore[size].scoreCon }"></c:out> </h4>
                <h5> 함께 했던 메이트 : ${ mateScore[size].userId}</h5>
                <hr>
                
				</c:forEach>

			</c:if>
                
            </div>
        </div>
        
    </div>

</body>
<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>
</html>