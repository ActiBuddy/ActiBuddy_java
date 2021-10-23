<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../resources/css/actibuddy.css" rel="stylesheet">
    <link href="../resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/activitymain.css">
    <title>activity-main</title>
</head>
<body id="body">
    <nav class="navbar1">
        <ul class="navbar_menu">
            <a href="../main/main.html"><img src="../resources/image/actibuddylogo.png" class="nav_logo"></a>
            <li class="dropbox"><a href="/acti/activity/information">액티비티</a></li>
            <li class="dropbox"><a href="../Mate/matemain.html">메이팅</a></li>
            <li><input type="text" placeholder="Search"></li>
            <li><button type="button" class="search-btn" onclick="location.href='/acti/search/activity'">Submit</button></li>
        </ul>

        <ul class="navbar_link">
            <li><a href="../FAQ/FAQ_main.html">FAQ</a></li>
            <li><a href="../singup/signup.html">회원가입</a></li>
            <li><button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button></li>
        </ul>
    </nav>    

    <br><br><br><br>
    <div class="jumbotron">
        <h2 class="mainTitle">액티비티 & 체험</h2>
        <p style="margin:0.2% 0 0 15%" >어트랙션 투어 및 체험 등 다양한 상품을 둘러보세요!</p>
        <div class="search">
            <ul>
            <input type="text" class="searchtext" placeholder="액티비티 또는 상품검색"></li>
            <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>

    <div class="menu1" id="seoul"style="margin-top: 10%;">
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
                <img src="../resources/image/Star.png"" style="height: 30px; width: 30px;"><span>별점 4.4</span>
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
            

        <footer>
            <div class="footer">
                <span></span>

                <ul>2021 액티버디</ul>
                <ul> 회사소개
                    <li><a href="../introduce/introduce.html">액티버디소개</a></li>
                    <li><a href="../mypage/mypage.html">마이페이지</a></li>

                    </ul>

                <ul> 파트너십
                    <li><a href="../partnership/partnership.html">파트너십</a></li>
                </ul>

                <ul> 이용약관
                    <li><a href="../FAQ/Privacy_Policy.html">약관</a></li>
                </ul>

                <ul>결제수단
                    <li><a href="#">카카오페이</a></li>
                </ul>
                <span></span>
                <span></span>
            </div>
        </footer>
</body>
</html>