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
    
    <title>여행 후기</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
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
            
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" id="one" class="forgreen">여행 후기</button>
                <button type="button" class="forgreen" >메이팅 후기</button>

            </div>

            <div class="a-center-1">
                
                <div class="a-center-text">

                    <h4>여행 후기</h4>
                    <hr>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    
                    <!-- 별점 가져오기 -->
                    
                    <c:forEach items="selectActiReview">
					<br>
					<c:choose>
					  <c:when test="${ selectActiReview[size].scoreStar == 1 }">
						 <h2>★</h2>
					  </c:when>
					  <c:when test="${ selectActiReview[size].scoreStar == 2 }">
					     <h2>★★</h2>
					  </c:when>
					  <c:when test="${ selectActiReview[size].scoreStar == 3 }">
					     <h2>★★★</h2>
					  </c:when>
					  <c:when test="${ selectActiReview[size].scoreStar == 4 }">
					     <h2>★★★★</h2>
					  </c:when>
					  <c:when test="${ selectActiReview[size].scoreStar == 5 }">
						<h2>★★★★★</h2>
					  </c:when>
					</c:choose>
					
                    <h3>제목 : ${ selectActiReview.title}</h3>
                    <br><br>
                    <h4>후기 상품 : ${ selectActiReview.name}</h4>
    
                    <h5>날짜 : ${ selectActiReview.writeDate }</h5><br>
                    
                    <%-- <h5>수량 : ${ selectActiReview.reviewList[size].writeDate }</h5> --%>
                    <button id="delete">삭제</button>
    
                    <hr>
                    
                    </c:forEach>

    
                    <h4>메이팅 후기</h4>
                    <hr>
					
					<c:forEach var="size" begin="0" end="${ fn:length(selectMtReview)-1}">
                    <button id="move" type="button" onclick="location.href='/acti/mate/review/select?num=${selectMtReview[size].num }'">상세보기 ></button>
                    
                    <h3>후기 제목 : ${ selectMtReview[size].title }</h3>
                    <br><br><br>
                    <h4>나와 함께한 메이트 : </h4>
    
                    <br><hr>
					</c:forEach>


                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>