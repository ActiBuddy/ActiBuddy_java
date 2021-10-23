<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../../resources/css/mateReview_postview.css" rel="stylesheet" />

    <title>메이트들과 첫 스쿠버다이빙~~</title>
  </head>
  <body>
      <!-- 네비게이션바 -->
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
            <li><a href="">회원가입</a></li>
            <li><button type="button" class="login_btn" onclick="location.href='main.html'">로그인</button></li>
        </ul>
    </nav>
    <!-- 주요 html -->
    <div class="around">
        <!-- 로고 이미지 -->
        <div class="mate_logo">
            <a href="#"><img src="../../resources/image/matereview.png"></a>
        </div>

        <!-- 제목 부분 -->
        <div class="title">
            <div class="first">
                <img src="../../resources/image/heart2.png">
            </div>
            <div class="second">
                제목
            </div>
            <div class="third">
                <p>메이트들과 첫 스쿠버다이빙~</p>
            </div>
        </div>
            
        
        <div class="detail">
            <div class="writer">
                작성자 : 
            </div>
            <div class="name">
                parisbaguette
            </div>
            <div class="view">
                조회 52
            </div>
            <div class="writer_date">
                2021.10.03  ・ 
            </div>
        </div>
    
        <hr>
         <!-- 이미지 슬라이드 -->
        <div class="image_view">

            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="../../resources/image/scuba_diving1.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="../../resources/image/busan.jpeg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="../../resources/image/seoul.jpeg" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>

        </div>

        <hr>
       <!-- 텍스트 부분 -->
       <div class="text_box">
           <div>
            메이트 분들과 재밌는 바다여행 했어요 !<br>
            처음이라 걱정했는데 메이트분들이 친절하게 도와주셔서 재밌게 놀다왔어요.<br>
            자유롭게 바다속을 다니고, 귀여운 물고기도 봤어요~<br>
            스트레스 완젼 풀렸는데 또 가고싶네요<br>
            다들 스쿠버 다이빙 하세요^^
           </div>
       </div>

        <!-- 버튼 부분 -->
       <div class="btnborder">
          <button class="btnok"><a href="#">수정</a></button>
          <button class="btnno"><a href="#">삭제</a></button>
       </div>

       <hr>

       <!-- 댓글 부분 -->
       <div class="commentborder">
         <div class="comtext1">댓글 : </div>
         <div class="comtext2"><textarea></textarea></div>
         <div class="comtext3"><input type="submit" class="c3" value="등록"></div>
       </div>

       <hr>

       <!-- 댓글 내용 -->
       <div class="comment">
           <div class="test">댓글을 작성해보세요 !</div>
       </div>

       <hr>
    <!-- 찐짜div끝-->
    </div>

    <!-- 스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

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
