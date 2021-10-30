<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>여행 후기</title>
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
    
                <jsp:include page="../common/mypagesidebar.jsp"/>
            
        </div>
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" id="one" class="forgreen">여행 후기</button>
                <button type="button" class="forgreen">메이팅 후기</button>

            </div>

            <div class="a-center-1">
                
                <div class="a-center-text">

                    <h4>여행 후기</h4>
                    <hr>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>★★★★★ </h3>
                    <h3>후기 제목 </h3>
                    <h4>후기 상품 : </h4>
    
                    <h5>날짜 : <br> 수량 : </h5>
                    <button id="delete">삭제</button>
    
                    <hr>
    
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>★★★★☆ </h3>
                    <h3>후기 제목 </h3>
                    <h4>후기 상품 : </h4>
    
                    <h5>날짜 : <br> 수량 : </h5>
                    <button id="delete">삭제</button>
    
                    <hr>
                    <h4>메이팅 후기</h4>
                    <hr>

                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <h3>★★★★☆ </h3>
                    <h3>후기 제목</h3>
                    <br><br><br>
                    <h4>나와 함께한 메이트 : </h4>
    
                    <br><hr>


                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>