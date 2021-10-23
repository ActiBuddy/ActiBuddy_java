<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../../resources/css/mateFind_postview.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>같이 여수갈 사람 구해요 ! ! ! </title>
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

        <!-- 액티비티 이미지 -->
        <div class="activity">
            <img src="../../resources/image/faq_main.jpeg" />
        </div>
    
        <!-- 제목 부분 -->
        <div class="title">
            <div class="first">
                <img src="../../resources/image/heart2.png">
            </div>
            <div class="second">
                전라
            </div>
            <div class="third">
                <p>같이 여수갈 사람 구해요 ! ! !</p>
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

         <!-- 선택박스 부분 -->
        <div class="choose">
            <div class="border">
                <div class="condition">
                    인원현황
                </div>
               <div class="yellowback">
                   <div class="imgborder1">
                       <img src="../../resources/image/c_one.png">
                   </div>
                   <div class="selectborder">
                      1/6
                   </div>
               </div>
            </div>

            <div class="border">
              <div class="condition">
                  신청기간
              </div>
              <div class="yellowback">
                  <div class="imgborder1">
                    <img src="../../resources/image/c_two.png">
                  </div>
                  <div class="selectborder">
                    ~2021.10.30
                  </div>
              </div>
            </div>

            <div class="border">
              <div class="condition">
                성별
              </div>
              <div class="yellowback">
                  <div class="imgborder2">
                    <img src="../../resources/image/both.png">
                  </div>
                  <div class="selectborder">
                   남녀무관
                  </div>
              </div>
            </div>

            <div class="border">
              <div class="condition">
                  희망연령
              </div>
              <div class="yellowback">
                  <div class="imgborder2">
                    <img src="../../resources/image/c_four.png">
                  </div>
                   <div class="selectborder">
                    20대, 30대
                   </div>
              </div>
            </div>

        </div>

        <hr>
        <!-- 텍스트 부분 -->
       <div class="text_box">
           <div class="">
           <span>11월 첫째주에 같이 여수가실 분 있나요?<br>
              게스트하우스에서 지내면서 같이 놀아요ㅎㅎ<br>
              5일 지내려고하는데 최소 2일은 같이 액티비티했으면 좋겠습니다<br>
              저는 28살 남자입니다. 또래분들 환영해요 !!!<br>
              같이 좋은 추억만들었으면 좋겠어요 <br>
              자세한 활동은 제 프로필 확인하거나 댓글 부탁드립니다.
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
