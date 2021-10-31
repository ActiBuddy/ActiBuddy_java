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
                <button type="button" class="forgreen" id="one">상품 추가</button>
                
            </div>

            <div class="a-center-1">
                
                <div class="a-center-text">
				
		
        			<c:if test="${ !empty sessionScope.loginMember }">
		
        				<h4><c:out value="${ sessionScope.loginMember.userName }"/> 님의 상품</h4>
        			
					</c:if>

                    <hr>
                 	<c:forEach var="size" begin="0" end="${fn:length(selectActiInfo)-1 }" >
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>액티비티 : ${ selectActiInfo[size].name }</h3> 
                    
                    <br><br>
<%--                     <h5> 시작 날짜 : <fmt:formatDate value="${selectActiInfo[size].StartDate }" pattern="yyyy-MM-dd"/></h5>


                    
                    <h5> 마감 날짜 : <fmt:formatDate value="${selectActiInfo[size].EndDate }" pattern="yyyy-MM-dd"/></h5>  --%>
    
                    <br><br>


                    <hr>
    				
    				</c:forEach> 
    				
    				
                   

                </div>

            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>

</body>
</html>