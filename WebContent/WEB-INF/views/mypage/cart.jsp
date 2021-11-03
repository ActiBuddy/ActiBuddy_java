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
    
        <jsp:include page="../common/mypagesidebar.jsp"/>
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" id="one" class="forgreen">장바구니</button>

            </div>

            <div class="a-center-1">
                
                <div class="c-center-text">

                    <br>
                    <hr>
    

                    <c:forEach var="trip" items="${ tripList }" varStatus="st">
                    
                    <form action="../mypage/cart" method="post" id="deleteCart">
                    <button id="x" type="submit">X</button>
                    <input type="hidden" name="cartNum" value="${ trip.cartList.get(0).cartNum }">
                    </form>
                    
                    <form action="/acti/activity/pay" method="post">
                    <button id="move" type="button" onclick="location.href='/acti/activity/information?actiName=${ trip.activityInfo.get(0).name  }'">상세보기 ></button>
                   <h3>${ trip.activityInfo.get(0).name }</h3>
                    <br><br>
                    <h5>날짜 : ${ trip.cartList.get(0).chooseDate }<br> 수량 : ${ trip.cartList.get(0).totalPerson }</h5>
                    <h5>옵션 : ${ trip.cartList.get(0).chooseOption }</h5>
                    <br>
                     <h4>총 결제할 금액 : ${ trip.cartList.get(0).totalPrice } 원</h4>
                    <input type="hidden" name="actiName" value="${ trip.activityInfo.get(0).name  }">
                    <input type="hidden" name="image" value="${ trip.activityInfo.get(0).image }">
                    <input type="hidden" name="date" value="${ trip.cartList.get(0).chooseDate }">
                    <input type="hidden" name="option" value="${ trip.cartList.get(0).chooseOption }">
                    <input type="hidden" name="person" value="${ trip.cartList.get(0).totalPerson }">
                    <input type="hidden" name="price" value="${ trip.cartList.get(0).totalPrice }">
                    <input type="hidden" name="actiNum" value="${ trip.activityInfo.get(0).code }">
                    <input type="hidden" name="cartNum" value="${ trip.cartList.get(0).cartNum }">
                    <input type="submit" value="바로 결제" id="pay">
                    </form>

                    <hr>
                    </c:forEach>
                    


                </div>


    
            </div>
           
        </div>

    </div>




</body>
<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>
</html>