<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/activitymain.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <script src="${ pageContext.servletContext.contextPath }/resources/js/menubar.js"></script>
    <title>액티비티</title>
</head> 
<body id="body">
    <jsp:include page="../common/menubar.jsp"/>

    <br><br><br><br>
    <div class="jumbotron">
        <h2 class="mainTitle">액티비티 & 체험</h2>
        <p style="margin:0.2% 0 0 15%; color: white;" >어트랙션 투어 및 체험 등 다양한 상품을 둘러보세요!</p>
        <div class="search">
            <form action="/acti/search/activity">
            <ul>
            <input type="text" class="searchtext" placeholder="액티비티 또는 상품검색" name="searchValue"></li>
            <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
            </form>
        </div>
    </div>

    <div class="menu1" id="seoul"style="margin-top: 10%;">
        <div class="row">
            <div class="col-md-3" style="margin-top: 10%; padding-left: 7%;">
                <h3>날씨 좋은데</h3>
                <h3>서울 나들이 어때?</h3>
                <h4>서울부터 서울 근교까지 한번에!</h4>
            </div>
		    <c:forEach var="acti" items="${ locationList }" end="2">
            <div class="col-md-3">
                <a href="/acti/activity/information?actiName=${ acti.activityList.get(0).name }"><img class="imgback" src="${ acti.activityList.get(0).image }"></a>
                <h4 class="bodyText">${ acti.activityList.get(0).name }</h4>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 ${ acti.activityList.get(0).star }</span>
                <p style="margin : 10px 0 0 10px">₩${ acti.activityList.get(0).price }부터</p>
            </div>
            </c:forEach>
        </div>
        <a href="/acti/activity/location?locationName=${locationList[0].name}" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>

    <div class="menu2" id="seoul" style="margin-top: 10%;">
        <div class="row">
             <div class="col-md-3" style="margin-top: 10%; padding-left: 7%;">
                <h3>국내 최대 테마파크!</h3>
                <h3>에버랜드와 캐리비안 베이</h3>
                <h3>지금 당장 경기도로 가자!!</h3>
            </div>
            <c:forEach var="acti" items="${ locationList2 }" end="2">
            <div class="col-md-3">
                <a href="/acti/activity/information?actiName=${ acti.activityList.get(0).name }"><img class="imgback" src="${ acti.activityList.get(0).image }"></a>
                <h4 class="bodyText">${ acti.activityList.get(0).name }</h4>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 ${ acti.activityList.get(0).star }</span>
                <p style="margin : 10px 0 0 10px">₩${ acti.activityList.get(0).price }부터</p>
            </div>
            </c:forEach>
        </div>
        <a href="/acti/activity/location?locationName=${locationList2[0].name}" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>

    <div class="menu3" id="seoul" style="margin-top: 10%;">
        <div class="row">
            <div class="col-md-3" style="margin-top: 10%; padding-left: 7%;">
                <h3>여름하면 제주도지!</h3>
                <h3>액티비티 하면 제주도!</h3>
                <h3>제주도하면 액티비티!</h3>
            </div>
            <c:forEach var="acti" items="${ locationList3 }" end="2">
            <div class="col-md-3">
                <a href="/acti/activity/information?actiName=${ acti.activityList.get(0).name }"><img class="imgback" src="${ acti.activityList.get(0).image }"></a>
                <h4 class="bodyText">${ acti.activityList.get(0).name }</h4>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 ${ acti.activityList.get(0).star }</span>
                <p style="margin : 10px 0 0 10px">₩${ acti.activityList.get(0).price }부터</p>
            </div>
            </c:forEach>
        <a href="/acti/activity/location?locationName=${locationList3[0].name}" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>
  </div>
  
    <div class="menu4" id="seoul" style="margin-top: 10%;">
        <div class="row">
            <div class="col-md-3" style="margin-top: 10%; padding-left: 7%;">
                <h3>마! 여행은 부산아이가!</h3>
                <h3>먹거리 즐길거리가 많은</h3>
                <h3>부산으로 떠나요!</h3>
            </div>
            
            <c:forEach var="acti" items="${ locationList4 }" end="2">
            <div class="col-md-3">
                <a href="/acti/activity/information?actiName=${ acti.activityList.get(0).name }"><img class="imgback" src="${ acti.activityList.get(0).image }"></a>
                <h4 class="bodyText">${ acti.activityList.get(0).name }</h4>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 ${ acti.activityList.get(0).star }</span>
                <p style="margin : 10px 0 0 10px">₩${ acti.activityList.get(0).price }부터</p>
            </div>
            </c:forEach>
        <a href="/acti/activity/location?locationName=${locationList4[0].name}" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>
    </div> 

        <jsp:include page="../common/footer.jsp"/>
</body>
</html>