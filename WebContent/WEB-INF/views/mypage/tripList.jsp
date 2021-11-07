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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>여행 내역</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">

</head>

<body>


      <jsp:include page="../common/menubar.jsp"/>

    <div class="logo" >
    
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>
    
    <c:if test="${ !empty sessionScope.loginMember }">
		<div class="page-text">

        	<h2><c:out value="${ sessionScope.loginMember.userName }"/>님의 마이페이지</h2>
        	
		</div>
	</c:if>



    <div class="body-all">
    
        <jsp:include page="../common/mypagesidebar.jsp"/>
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" class="forgreen" id="one">여행 내역</button>

            </div>

            <div class="a-center-1">
                
                <div class="a-center-text">
				
		
        			<c:if test="${ !empty sessionScope.loginMember }">
		
        				<h4><c:out value="${ sessionScope.loginMember.userName }"/> 님의 여행</h4>
        			
					</c:if>
					<hr>
					
				<c:choose>
				    <c:when test="${  not empty tripList }">
                 	<c:forEach var="size" begin="0" end="${fn:length(tripList.cartList)-1 }" >
                    <hr>
                    <button id="move" type="button" onclick="location.href='/acti/activity/information?actiName=${ tripList.activityInfo[size].name }'">상세보기 ></button>
                    <h3>액티비티 : ${ tripList.activityInfo[size].name }</h3> 
                    
                    <br><br>
                    <h5>날짜 : ${ tripList.cartList[size].chooseDate } <br> 수량 : ${ tripList.cartList[size].totalPerson }</h5>
                    <br><h5>선택 옵션 : ${ tripList.actiReview[size].chooseOption }</h5>
    
                    <br>
    
                    <h5 id="usestatus">이용상태 : </h5>
                      
	                    <c:if test="${ tripList.actiReview[size].content eq null }">
	                    	<button id="complete2" onclick="location.href='/acti/mypage/trip/review/write?actiName=${ tripList.activityInfo[size].name }'" >후기 작성하기</button>
	                    </c:if>
	                    
	                    <c:if test="${ tripList.actiReview[size].content ne null }">
	                    <button >후기 작성 완료</button>
	                    </c:if>
    					<hr>
    				</c:forEach> 
			</c:when>
    				<c:otherwise>
    					<h1>아직 등록된 여행 내역이 없습니다.</h1>
    				</c:otherwise>
    				</c:choose>
                </div>

            </div>
           
        </div>

    </div>



<!-- 하단 바 -->

</body>
   <jsp:include page="../common/footer.jsp"/>
</html>