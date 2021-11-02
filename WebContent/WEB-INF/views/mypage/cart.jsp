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

    <title>cart</title>
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
            <div class="side-2">
                
                <br><br>
                <div class="menu">
                    <a href="${ pageContext.servletContext.contextPath }/mypage/triplist">여행 내역</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/review">이용 후기</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/cart">장바구니</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/matelist">메이트 내역</a><br><br><br> 
                    <a href="${ pageContext.servletContext.contextPath }/mypage/myQuestion">문의 사항</a><br><br>
                </div>
            </div>

            
        </div>
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" id="one" class="forgreen">장바구니</button>

            </div>

            <div class="a-center-1">
                
                <div class="c-center-text">

                    <br>
                    <hr>
    

                    <c:forEach var="size" begin="0" end="${ fn:length(tripList)-1 }" >
                    <form action="/acti/activity/pay" method="post">
                    <button id="x">X</button>
                    <button id="move" type="button" onclick="location.href='/acti/activity/information?actiName=${ tripList[size].activityInfo[size].name  }'">상세보기 ></button>
                    <h3>${ tripList[size].activityInfo[size].name }</h3>
                    <br><br>
                    <h5>날짜 : ${ tripList[size].cartList[size].chooseDate }<br> 수량 : ${ tripList[size].cartList[size].totalPerson }</h5>
                    <br>
                    <h4>총 결제할 금액 : ${ tripList[size].cartList[size].totalPrice } 원</h4>
                    <input type="hidden" name="actiName" value="${ tripList[size].activityInfo[size].name  }">
                    <input type="hidden" name="image" value="${ tripList[size].activityInfo[size].image }">
                    <input type="hidden" name="date" value="${ tripList[size].cartList[size].chooseDate }">
                    <input type="hidden" name="person" value="${ tripList[size].cartList[size].totalPerson }">
                    <input type="hidden" name="price" value="${ tripList[size].cartList[size].totalPrice }">
                    <input type="hidden" name="userId" value="${ sessionScope.loginMember.userName }">
                    <input type="hidden" name="actiNum" value="${ tripList[size].activityInfo[size].code }">
                    <input type="submit" value="바로 결제" id="pay">
                    <!-- <button id="pay" type="button" onclick="location.href=''">바로 결제</button> -->
                    </form>

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