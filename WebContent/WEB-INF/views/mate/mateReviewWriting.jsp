<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../../resources/css/mateReview_writing.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>메이트 후기글 작성</title>
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
                <p>메이트들과 첫 스쿠버 다이빙 ~~</p>
            </div>
        </div>
            
        
        <div class="detail">
            <div class="writer">
                작성자 : 
            </div>
            <div class="name">
                skusku
            </div>
            <div class="view">
                조회 52
            </div>
            <div class="writer_date">
                2021.10.03  ・ 
            </div>
        </div>

        <hr>
        <!-- 텍스트 부분 -->
       <div class="text_box">
           <textarea placeholder="글을 입력해주세요."></textarea>
       </div>

       <hr>

       <!-- 첨부 부분 -->
       <div class="bottom_border">
           <div class="img_border">
               <div class="file">첫번째 이미지 : <input type="file" value="file1"></div>
               <div class="file">두번째 이미지 : <input type="file" value="file2"></div>
               <div class="file">세번째 이미지 : <input type="file" value="file3"></div>
               <div class="condition">사진은 최대 3장까지 첨부가능합니다.</div>
           </div>
       </div>

        <hr>

       <!-- 버튼 부분 -->
        <div class="btnborder">
            <button class="btnok"><a href="#">등록</a></button>
            <button class="btnno"><a href="#">취소</a></button>
         </div>
       </div>

    <!-- 찐짜div-->
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
