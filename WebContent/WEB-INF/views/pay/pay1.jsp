<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <link href="${ pageContext.servletContext.contextPath }/resources/css/pay.css" rel="stylesheet">


    <title>결제 화면</title>
  </head>
  <body> 
    <jsp:include page="../common/menubar.jsp"/>



<!---------------------------------메인------------------------------------------------->

<main>

    <br><br><br>

    <div id="top">
        <div id="circle1">
            <h4 id="info">상품 선택</h4>
        </div>
            <div id="dott1"></div>
            <div id="dott1"></div>
            <div id="dott1"></div>
        <div id="circle2">
            <h4 id="info">예약 정보 입력</h4>
        </div >
            <div id="dott2"></div>
            <div id="dott2"></div>
            <div id="dott2"></div>
        <div id="circle3">
            <h4 id="info">결제 진행</h4>
        </div>
    </div>

    <div id="middle"> <br>
        <h2 id="enter"> 정보 입력하기 </h2> <hr>
        <h3 id="warning">정확한 정보를 입력하셨는지 다시 한번 확인해주세요!! <br>
             결제 단계로 넘어가신 후에는 예약 정보를 변경할 수 없어요.</h3>
        <br> <br>

        <form action="/acti/activity/pay2" method="post">
        <h2 id="confirm"> 예약 정보 </h2> <hr> <br>
        <img id="img" src="${ payInfo.image }"> <br>
        <h5 id="activity-name">${ payInfo.actiName }</h5> <br>
        <h6 id="option">체험 다이빙</h6> <br><br><br><br>

        <h5 id="date"> 날짜 : ${ payInfo.date }</h5>
        <h5 id="person"> 수량 : ${ payInfo.person }</h5>

        <h2 id="all">총금액: </h2>
        <h2 id="price">₩ ${ payInfo.price }</h2> <br> <hr>
        
        <input type="hidden" name="image" value="${ payInfo.image }">
        <input type="hidden" name="actiName" value="${ payInfo.actiName }">
        <input type="hidden" name="actiNum" value="${ payInfo.actiNum }">
        <input type="hidden" name="date" value="${ payInfo.date }">
        <input type="hidden" name="person" value="${ payInfo.person }">
        <input type="hidden" name="price" value="${ payInfo.price }">
        <input type="hidden" name="userId" value="${ sessionScope.loginMember.userName }">

        <input id="progress" type="submit" value="결제 진행">

        </form>
    </div>


</main>

<!---------------------------------하단바-------------------------------------->

    <jsp:include page="../common/footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
