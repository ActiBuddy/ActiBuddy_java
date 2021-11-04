<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../resources/css/mateFind_postview.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>같이 여수갈사람 구해요!!!</title>
  </head>
  <body>
    
    <!-- 네비게이션바 -->
       <jsp:include page="../common/menubar.jsp"/>

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
           <div>
              11월 첫째주에 같이 여수가실 분 있나요?<br>
              ㅇㅇ게스트하우스에서 지내려합니다.<br>
              5일 여행인데, 최소 2일은 같이 지냈으면 좋겠습니다<br>
              제가 차가 있어서 편하게 오세요<br>
              저는 28살 남자입니다. 또래분들 환영해요~!!!
              같이 좋은 추억 만들고싶어요~ <br>
              자세한 활동은 제 프로필 확인하거나 댓글 부탁드립니다.
           </div>
       </div>

        <!-- 버튼 부분 -->
       <div class="btnborder">
          <button class="btngo"><a href="#">신청하기</a></button>
          <div class="report"><img src="../../resources/image/report2.png"></div>
       </div>


        </div>

       <hr>

         <!-- 댓글 작성 -->
        <form action="/acti/mate/comment" method="post">
       <div class="commentborder">
         <div class="comtext1">댓글 : </div>
         <div class="comtext2"><textarea name="text" placeholder="댓글을 작성해주세요"></textarea></div>
         <div class="comtext3"><input type="submit" class="c3" value="등록"></div>
         <input type="hidden" name="userId" value="${ sessionScope.loginMember.userId }">
       </div>
	   </form>
       <hr>

        <!-- 댓글 내용 -->
       <div class="comment">
          <div class="com1_border">
              <div class="com_writer1">작성자 : </div>
              <div class="com_writer2">sangho</div>
              <div class="com_writer3"><img src="../resources/image/mypage/wraning.png"/></div>
              <div class="com_writer4">
                  <div class="com_writer5">저도 차끌고가도되나요?</div>
                  <div class="com_writer6">
                      <div class="re">답글달기</div>
                      <div class="date">2021/10/15 15:40</div>
                  </div>
              </div>
          </div>
          <div class="com2_iborder">
              <img src="../resources/image/comment_arrow.png"/>    
          </div>
          <div class="com2_border">
              <div class="com_writer1">작성자 : </div>
              <div class="com_writer2">parisbaguette</div>
              <div class="com2_writer3"><img src="../resources/image/mypage/wraning.png"/></div>
              <div class="com_writer4">
                <div class="com_writer5">네^^ 게하 주차장이 넓더라구요~</div>
                <div class="com_writer6">
                    <div class="re">답글달기</div>
                    <div class="date">2021/10/15 16:10</div>
                </div>
            </div>
       </div>
    <!-- 찐짜div-->
    </div>
    
    <hr>

    <div class="blank">

    </div>

   <jsp:include page="../common/footer.jsp"/>
    </body>
  </html>
