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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/pay3.css" rel="stylesheet">


    <title>결제 화면</title>
  </head>
  <body> 
    <jsp:include page="../common/menubar.jsp"/>



<!---------------------------------메인------------------------------------------------->

<main>

    <br><br><br>

    <div id="top">
        <div id="circle">
            <h4 id="info">결제 완료</h4>
        </div>
    </div>

    <div id="middle"><br>
        <h2 id="confirm"> 예약 정보 </h2> <hr>

        <br> <br>

        <img id="img" src="../../resources/image/activity_info/Activity_info_scuba_diving(1).png"> <br>
        <h5 id="activity-name">제주도 감귤마을 스쿠버다이빙</h5> <br>
        <h6 id="option">체험 다이빙</h6> <br><br><br><br>

        <h5 id="date"> 날짜 : 2021년 10월 5일 오전 13:00</h5>
        <h5 id="person"> 인원 : 3</h5>

        <h2 id="all">총금액: </h2>
        <h2 id="price"> ₩999,999</h2> <br> <hr>

        <h5 id="completion">카카오 페이 결제가 정상적으로 완료되었습니다.</h5> <br>
        <h5 id="payment">결제 일시 : 2021-10-05T22:01:43</h5>

        <a id="a" href="../main/main.html">
            <input id="next" type="submit" value="확인">
        </a>

    </div>
    
</main>

<!---------------------------------하단바-------------------------------------->

    <jsp:include page="../common/footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
