<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>액티비티 조회 메인 화면</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <!-- 만든 스크립트 및 CSS-->
    <link rel="stylesheet" href="../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../resources/css/activity-style.css">
    <link rel="stylesheet" href="../resources/css/FAQ.css">
    <script src="../resources/js/activity.js"></script>
  </head>
  <br>
  <body>
    <!-- 네비게이션 바-->
    <nav class="navbar">
      <ul class="navbar_menu">
          <a href="../main/main.html"><img src="../resources/image/actibuddylogo.png" class="nav_logo"></a>
          <li class="dropbox"><a href="/acti/activity/information">액티비티</a></li>
          <li class="dropbox"><a href="Mate/matemain.html">메이팅</a></li>
          <li><input type="text" placeholder="Search"></li>
          <li><button type="button" onclick="location.href='/acti/search/activity'">Submit</button></li>
      </ul>

      <ul class="navbar_link">
          <li><a href="../FAQ/FAQ_main.html">FAQ</a></li>
          <li><a href="singup/signup.html">회원가입</a></li>
          <li><button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button></li>
      </ul>
    </nav>
    
    <!-- 메인 이미지 및 설명 -->
    <div class="container mb-4">
        <div class="image">
          <div class="faq">
            <img src="../resources/image/kang.jpg">
          </div>
            <div>
            <h1 id="title">강원</h1>
            <p id="content">
                국내 휴가지 중 최고로 손꼽히는 강원도. 국내에서 가장 아름다운 풍경을 볼 수 있는 곳이기도 합니다. <br>
                청정 자연을 자랑하는 대관령, 설악산과 가슴이 탁 트이는 동해 바다까지! 한국인들에게 사랑받는 강원도를 여행해보세요. <br>
                야외 액티비티를 좋아한다면 강촌 레일 바이크를 타고 경치를 감상하고 <br> 
                패러글라이딩 체험으로 하늘 위에서 숨 막히는 절경을 내려다보세요. <br><br>
                신나는 액티비티를 즐긴 후에는 강릉 커피 거리에서 바다를 바라보며 향긋한 커피를 음미해보는 건 어떨까요? <br>
                오감을 만족시켜 줄 강원도로의 여행, 지금 떠나보세요.
            </p>
            </div>
        </div>
    </div>    
        
    <!-- 여행 가이드 및 팁-->
    <div class="container mt-5 mb-5">
        <div class="row">
          <div class="col">
            <h1 id="tipTitle" style="margin-bottom: 20px;">강원도 여행 가이드 및 팁</h1>
            <div class=tip>
            <p id="tipBody">
            볼거리 즐길거리 먹거리 모두 다 즐길 수 있다! <br>
            산과 바다가 공존하는 국내 최고로 손꼽히는 강원도! <br>
            강원도에 최대 인기 관광명소인 남이섬,정동진 등 다양한 관광명소가 있고 DMZ 박물관. 오죽헌 등 역사적인 요소를 탐방할 수 도 있습니다. <br>
            또한 다양한 먹거리로도 유명한 춘천,속초등등 다양할 먹거리도 즐길 수 있습니다! 
            </p>
            </div>
        </div>
      <div class="col" id="visit">
        <h1 style="margin-bottom: 20px;">방문하기 좋은 시기</h1>
        <ul>
          <li>
            <header id="visitHeader">1월</header>
            <p id="visitBody">화천 산천어 축제</p>
          </li>
          <li>
            <header id="visitHeader">12월</header>
            <p id="visitBody">평창송어축제</p>
          </li>
        </ul>
      </div>
      </div>
    </div>
          
    <!-- 인기 액티비티 -->
    <div class="container mt-5 mb-md-5">
        <h1>강원도 인기 액티비티</h1>
    </div>
    <div class="container mt-4">
        <div class="row">
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">등산</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">서핑</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top">
                      <div class="card-body">
                      <h3 class="card-text">페러글라이딩</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">스키</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">짚라인</h3>
                    </div>
                  </div>
            </div>
        </div>
    </div>
  </div>

      <!-- 액티비티 조회 -->
    <div class="container mt-5">
      <h1>강원도 액티비티</h1>
      <hr>
    </div>   
  <div class="bigDiv">
    <div class="side-2" style="height: 530px;">
      <h3 style="margin-left: 10%;">카테고리</h3>
      <br>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            아웃도어 & 스포츠
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="sport" value="comping"><span>캠핑 & 글램핑</span></li>
            <li class="mb-4"><input type="checkbox" name="sport" value="luge"><span>루지 & 짚라인 & 어드벤처</span></li>
            <li class="mb-4"><input type="checkbox" name="sport" value="ski"><span>스키 & 스노보드<span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll" value="selectAll"><span>모두선택</span></li>
          </ul>
        </div>
      </div> 
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            티켓 & 입장권
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="ticket" value="park"><span>공원 & 자연</span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="zoo"><span>아쿠아리움 & 동물원</span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="water park"><span>테마파크 & 워터파크<span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="museum"><span>박물관 & 미술관<span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll2" value="selectAll2"><span>모두선택</span></li>
          </ul>
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            스파 & 테라피
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="spa" value="spa"><span>온천</span></li>
            <li class="mb-4"><input type="checkbox" name="spa" value="wellbeing"><span>웰빙& 웰니스</span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll3" value="selectAll3"><span>모두선택</span></li>
          </ul>
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            투어
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="tour" value="working"><span>워킹 & 자전거투어</span></li>
            <li class="mb-4"><input type="checkbox" name="tour" value="bus"><span>버스 & 스쿠터 & ATV투어</span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll4" value="selectAll4"><span>모두선택</span></li>
          </ul>
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            수상 액티비티
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="water" value="surfing"><span>서핑</span></li>
            <li class="mb-4"><input type="checkbox" name="water" value="kayak"><span>패들보드 & 카약 & 래프팅</span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll5" value="selectAll5"><span>모두선택</span></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="div2">
        <h2 class="container mt-5 mb-5" style="float: none; margin:100 auto;">47건의 검색 결과</h2>
        <div class="container" style="float: none; margin:100 auto;">
          <div class="row mb-5" style="float: none; margin:0 auto;">
            <div class="col" style="flex: 0;">
              <div class="date">
                <form action="" ><p style="font-size: 18px">예약날짜 : <input type="text" id="datepicker" readonly="readonly"></p></form>
              </div>
            </div>
            <div class="col" style="flex: 1.0; padding: 0px;" >
              <div class="dropdown" style="margin-left: 50px;">
                <button class="btn btn-secondary dropdown-toggle"  id="priceBtn" data-bs-toggle="dropdown" aria-expanded="false">
                <span id="spanPrice">가격</span>
                </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <div class="price">
                      <input type="text" id="amount2" readonly style="border:0; color:#f6931f; font-weight:bold;">
                      <div id="slider-range" style="margin-top: 10px;"></div>
                      <button type="submit" class="btn btn-success" id="submit">확인</button>
                    </div>
                  </ul>
              </div>
            </div>
            <div class="col">
              <span id="sort">정렬 : </span>
              <div class="dropdown">
                <select id="sortBtn" aria-labelledby="dropdownMenuButton1">
                    <li><option class="dropdown-item">인기순</option></li>
                    <li><option class="dropdown-item">별점순</option></li>
                    <li><option class="dropdown-item">낮은가격순</option></li>
                    <li><option class="dropdown-item">최신순</option></li>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="container" style="float: none; margin:100 auto;">
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="float: none; margin:0 auto;">
            <div class="col">
              <div class="card shadow-sm">
                <img src="../resources/image/busan.jpeg"  id="check1" width="100%" height="225"  role="img" ></img>
                <div class="card-body">
                  <p class="card-text">
                      하슬라이트월드 할인
                  </p>
                  <p>별점 : 4점</p>
                  <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">₩9,400부터</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  width="100%" height="225"  role="img" ></img></a>
                <div class="card-body">
                    <p class="card-text">
                        런닝맨 파크
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
                <div class="card-body">
                    <p class="card-text">
                        강원 페러글라이딩
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
                <div class="card-body">
                    <p class="card-text">
                        루지루지
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
                <div class="card-body">
                    <p class="card-text">
                        졸리구만
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
                <div class="card-body">
                    <p class="card-text">
                        하슬라이트월드 할인
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
                <div class="card-body">
                    <p class="card-text">
                        하슬라이트월드 할인
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
                <div class="card-body">
                    <p class="card-text">
                        하슬라이트월드 할인
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card shadow-sm">
                <div class="card shadow-sm">
                    <a href="https://www.naver.com"><img src="../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
                  <div class="card-body">
                    <p class="card-text">
                        하슬라이트월드 할인
                    </p>
                    <p>별점 : 4점</p>
                    <p>best 액티비티</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <small small class="text-muted">9 mins</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> 
        </div>
      </div>
    </div>  
    
  <!-- 페이지 이동창 -->    
  <nav>
    <div class="container row" style="float: right; margin:100 auto;">
    <ul class="pagination" style="float: right;">
      <li>
        <a href="#" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
        </a>
      </li>
      <li><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li>
        <a href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
        </a>
      </li>
    </ul>
  </div>
  </nav>
  
    <!-- 메이트 마감 임박 -->
    <div class="mateDiv">
      <h1 style="margin-right: 75%;">메이트 마감 임박</h1>
      <div class="row" id="box">
        <div class="col">
          <a href="../Mate/matemain.html"><img id="mateImg" src="../resources/image/mate.png"></a>
        </div>
        <div class="col">
          <div class="mateBox">
            <div class="mateTop">
              <img src="../resources/image/heart.png">
              <h5 id="mateTitle">감귤마을 스쿠버 다이빙</h5>
            </div>
            <div class="matebody">
            <p id="left">작성자 : </p><p id="left">감귤</p> 
            <p id="date">~10/8</p>  
            <button type="button" class="btn btn-success" id="btn">참여하기</button>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="mateBox">
            <div class="mateTop">
              <img src="../resources/image/heart.png">
              <h5 id="mateTitle">감귤마을 스쿠버 다이빙</h5>
            </div>
            <div class="matebody">
            <p id="left">작성자 : </p><span id="left">감귤</span> 
            <p id="date">~10/8</p>
            <button type="button" class="btn btn-success" id="btn">참여하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 <!-- 하단 footer-->
 <footer>
  <div class="footer">
      <span></span>

      <ul>2021 액티버디</ul>
      <ul> 회사소개
          <li><a href="/acti/introduce">액티버디소개</a></li>
          <li><a href="/acti/mypage/main">마이페이지</a></li>
      </ul>

      <ul> 파트너십
          <li><a href="/acti/partnership">파트너십</a></li>
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
  
</foote../r>
  </body>
</html>