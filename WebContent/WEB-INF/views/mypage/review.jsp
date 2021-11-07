<%@page import="com.actibuddy.activity.model.dto.ActivityAndReviewDTO"%>
<%@page import="java.util.List"%>
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
                <button type="button" class="forgreen" onclick="onDiplay(),offDisplay()">메이팅 후기</button>

            </div>

            <div class="a-center-1">
                
                <div class="a-center-text">

                    <h4>여행 후기</h4>
                    <hr>
					<%-- <c:choose>
					<c:when test="${ not empty selectActireciew }"> --%>
					<% List<ActivityAndReviewDTO> list = (List<ActivityAndReviewDTO>)request.getAttribute("selectActireview"); %>
					
					<% for(int i = 0; i < list.size(); i++){ %>    
	                    <% for(int j = 0; j < list.get(i).getReviewList().size(); j++){ %>
							<c:set var="title" value="<%= list.get(i).getReviewList().get(j).getTitle() %>"/>
		                    <c:set var="acti" value="<%= list.get(i).getName() %>"/>
	                    
		                    <h5> <%= list.get(i).getReviewList().get(j).getWriteDate() %></h5>
		                    <button id="move" type="button" onclick="location.href='/acti/activity/information?actiName=${ acti }'">상세보기 ></button>
		                      <c:set var="start" value="<%= list.get(i).getReviewList().get(j).getReviewStar() %>"/>
		                    <c:choose>
							  <c:when test="${start == 1 }">
								 <h2 id="foryellow">★</h2><h2 id="forgray">★★★★</h2>
							  </c:when>
							  <c:when test="${ start == 2 }">
							     <h2 id="foryellow">★★</h2><h2 id="forgray">★★★</h2>
							  </c:when>
							  <c:when test="${ start == 3 }">
							     <h2 id="foryellow">★★★</h2><h2 id="forgray">★★</h2>
							  </c:when>
							  <c:when test="${ start == 4 }">
							     <h2 id="foryellow">★★★★</h2><h2 id="forgray">★</h2>
							  </c:when>
							  <c:when test="${ start == 5 }">
								<h2 id="foryellow">★★★★★</h2>
							  </c:when>
							</c:choose><br>
		                  	<h3>제목 : ${ title }</h3>
		                    <br><br>
			                 <h4>후기 상품 : ${ acti }</h4>
		    
							<br><hr>
					
					<%   } %>
    				<% } %>
<%--     				</c:when>
                    
                    <c:otherwise>
                    <h1>아직 등록된 여행 후기가 없습니다.</h1>
                    </c:otherwise>
                    </c:choose> --%>
                    
                    

                    <div>
                    <h4>메이팅 후기</h4>
                    <hr>
					<c:choose>
				    <c:when test="${  not empty selectMtReview }">
					<c:forEach var="size" begin="0" end="${ fn:length(selectMtReview)-1}">
                    <button id="move" type="button" onclick="location.href='/acti/mate/review/select?num=${selectMtReview[size].num }'">상세보기 ></button>
                    
                    <h3>후기 제목 : ${ selectMtReview[size].title }</h3>
                    <br><br><br>
                    <h4>나와 함께한 메이트 : </h4>
      
                    <br><hr>
					</c:forEach>
					</c:when>
					<c:otherwise>
					<h1> 아직 등록된 메이팅 후기가 없습니다.</h1>
					</c:otherwise>
					</c:choose>
                    </div>
                </div>

            </div>
           
        </div>

    </div>
</body>
   <jsp:include page="../common/footer.jsp"/>
</html>