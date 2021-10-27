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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <script src="${ pageContext.servletContext.contextPath }/resources/js/menubar.js"></script>
    <title>액티비티</title>
</head>
<body id="body">
    <jsp:include page="../common/menubar.jsp"/>

    <br><br><br><br>
    <div class="jumbotron">
        <h2 class="mainTitle">액티비티 and 체험</h2>
        <p style="margin:0.2% 0 0 15%" >어트랙션 투어 및 체험 등 다양한 상품을 둘러보세요!</p>
        <div class="search">
            <form action="">
            <ul>
            <input type="text" class="searchtext" placeholder="액티비티 또는 상품검색"></li>
            <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
            </form>
        </div>
    </div>

    <div class="menu1" id="seoul"style="margin-top: 10%;">
        <div class="row">
    
            <div class="col-md-3" style="margin-top: 6%; padding-left: 10%;">
                <h2>날씨 좋은데</h2>
                <h2>서울 나들이 어때?</h2>
                <p>서울부터 서울 근교까지 한번에!</p>
            </div>
             <c:forEach var="acti" varStatus="i" items="${ locationList }" begin="0" end="2"  >
            <div class="col-md-3">
                <a href="/acti/activity/information?actiName="><img class="imgback" src=""></a>
                <h3 class="bodyText"></h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦원부터</p>
            </div>
              </c:forEach>
        </div>
        <a href="/acti/activity/location?locationName=${locationList[0].name}" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>

    <div class="menu2" id="seoul" style="margin-top: 10%;">
        <div class="row">
            <div class="col-md-3" style="margin-top: 6%; padding-left: 10%;">
                <h2>날씨 좋은데</h2>
                <h2>서울 나들이 어때?</h2>
                <p>서울부터 서울 근교까지 한번에!</p>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">롯데월드 자유 이용권</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">경복궁</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">서울 어린이대공원</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
        </div>
        <a href="../activity/activity.html" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>

    <div class="menu3" id="seoul" style="margin-top: 10%;">
        <div class="row">
            <div class="col-md-3" style="margin-top: 6%; padding-left: 10%;">
                <h3>여름하면 제주도지!</h3>
                <h3>액티비티 하면 제주도!</h3>
                <h3>제주도하면 액티비티!</h3>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">롯데월드 자유 이용권</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">경복궁</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">서울 어린이대공원</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
        </div>
        <a href="../activity/activity.html" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>

    <div class="menu4" id="seoul">
        <div class="row">
            <div class="col-md-3" style="margin-top: 6%; padding-left: 10%;">
                <h2>날씨 좋은데</h2>
                <h2>서울 나들이 어때?</h2>
                <p>서울부터 서울 근교까지 한번에!</p>
            </div>
            
            <div class="col-md-3">
                <a href=""><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">롯데월드 자유 이용권</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">경복궁</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
            <div class="col-md-3">
                <a href="https://www.naver.com/"><img class="imgback" src="../resources/image/seoul.jpeg"></a>
                <h3 class="bodyText">서울 어린이대공원</h3>
                <img src="../resources/image/Star.png" style="height: 30px; width: 30px;"><span>별점 4.4</span>
                <p class="bottomText">￦18,000원부터</p>
            </div>
        </div>
        <a href="../activity/activity.html" style="text-decoration: none;"><button class="moreBtn" type="submit">더보기</button></a>
    </div>
            

        <jsp:include page="../common/footer.jsp"/>
</body>
</html>