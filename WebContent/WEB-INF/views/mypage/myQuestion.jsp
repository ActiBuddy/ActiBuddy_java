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

    <title>나의 문의사항</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">

</head>

      <jsp:include page="../common/menubar.jsp"/>
<body>

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

        
            <div class="a-center-1">
                
                <div class="c-center-text">
					
				<c:if test="${ !empty sessionScope.loginMember }">
		
        			<h3><c:out value="${ sessionScope.loginMember.userName }"/> 님의 문의사항</h3>

				</c:if>
				
				
			     	<c:choose>
				    <c:when test="${  not empty selectFaq }">
					<c:forEach var="size" begin="0" end="${ fn:length(selectFaq)-1}">
                    <hr>
                    <h3>제목 : ${selectFaq[size].queTitle}</h3>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <br> <br> <br>
                        <c:if test="${ selectFaq[size].answer eq null}">
                    <h4>문의 처리 상황 : 처리중</h4><br>
                        </c:if>
                        <c:if test="${ selectFaq[size].answer ne null}">
                    <h4>문의 처리 상황 : 처리완료</h4><br>
                        </c:if>

                    <button class="forgreen" id="l-list${ size + 1 }">답변 보기</button>
                    <div class="answer">
                        <br>
                        <p>
                        <c:if test="${ selectFaq[size].answer eq null}">
                    		답변을 기다려주세요. 빠른 시일 내에 처리하겠습니다.
                        </c:if>
                        <c:if test="${ selectFaq[size].answer ne null}">
                            ${selectFaq[size].answer}
                        </c:if>
                        </p>
                        <br>

                    </div>

                    
                    <script>
                        $(function(){
                            $('.answer').slideUp()
                
                            $('#l-list${ size + 1 }').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script>
					</c:forEach>
					</c:when>
					<c:otherwise>
					<h1> 아직 등록된 문의사항이 없습니다. </h1>
					</c:otherwise>
					</c:choose>

                </div>

            </div>
           
        </div>

    </div>

</body>

   <jsp:include page="../common/footer.jsp"/>
</html>