<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>액티비티 검색</title>
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
    <link rel="stylesheet" href="../../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../../resources/css/activity-style.css">
    <link rel="stylesheet" href="../../resources/css/FAQ.css">
    <script src="../../resources/js/activity.js"></script>
<body>
  <!-- 네비게이션 바.mainStyle{
    
}-->
  <nav class="navbar">
    <ul class="navbar_menu">
        <a href="../main/main.html"><img src="../../resources/image/actibuddylogo.png" class="nav_logo"></a>
        <li class="dropbox"><a href="../activity/activity.html">액티비티</a></li>
        <li class="dropbox"><a href="../Mate/matemain.html">메이팅</a></li>
        <li><input type="text" placeholder="Search"></li>
        <li><button type="button" onclick="location.href='../activity/searchActivity.html'">Submit</button></li>
    </ul>
    <ul class="navbar_link">
        <li><a href="../FAQ/FAQ_main.html">FAQ</a></li>
        <li><a href="../singup/signup.html">회원가입</a></li>
        <li><button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button></li>
    </ul>
  </nav>
          
    <!-- 액티비티 조회 -->
    <br><br>
    <div class="container">
      <h1 class="display-1">'해양'에 대한 검색결과</h1>
      <hr>
    </div>   
  <div class="bigDiv">
    <div class="side-2" style="height: 950px;">
      <h3 style="margin-left: 20px;">여행지역</h3>
      <div class="topDiv">
        <div class="mb-4" id="div1"><input type="checkbox"><span>서울</span></div>
        <div class="mb-4" id="div1"><input type="checkbox"><span>인천</span></div>
        <div class="mb-4" id="div1"><input type="checkbox"><span>경기도</span></div>
        <div class="mb-4" id="div1"><input type="checkbox"><span>강원도</span></div>
        <div class="mb-4" id="div1"><input type="checkbox"><span>충청도</span></div>
        <div class="mb-4" id="div1"><input type="checkbox"><span>전라도</span></div>
        <div class="mb-4" id="div1"><input type="checkbox"><span>제주도</span></div>
      </div>
      <hr>
      <div class="menu">
        <h3 style="margin-left: 10%;">카테고리</h3>
      <br>
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
                <img src="../../resources/image/busan.jpeg"  id="check1" width="100%" height="225"  role="img" ></img>
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
                <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  width="100%" height="225"  role="img" ></img></a>
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
                <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
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
                <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
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
                <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
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
                <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
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
                <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
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
                <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
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
                    <a href="https://www.naver.com"><img src="../../resources/image/busan.jpeg"  class="bd-placeholder-img card-img-top" width="100%" height="225"  role="img" ></img></a>
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
      <div class="container row" style="float: right;">
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