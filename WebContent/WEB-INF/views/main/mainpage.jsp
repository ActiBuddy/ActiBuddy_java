<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>main</title>

    <Script>
        $(function(){
                $("#acti_1").on({
                    mouseover: function(){
                        $('#acti_detail1').css('display', 'block');
                        $('#acti_detail2').css('display', 'none');
                    },
                    mouseleave: function(){
                        $('#acti_detail1').css('display','none');
                    }
                });
            });

            $(function(){
                $("#acti_detail1").on({
                    mouseover: function(){
                        $('#acti_detail1').css('display', 'block');
                    },
                    mouseleave: function(){
                        $('#acti_detail1').css('display','none');
                    }
                });
            });
            

        $(function(){
                $("#acti_2").on({
                    mouseover: function(){
                        $('#acti_detail2').css('display', 'block');
                        $('#acti_detail1').css('display', 'none');
                    },
                    mouseleave: function(){
                        $('#acti_detail2').css('display','none');
                    }
                });
            });

            $(function(){
                $("#acti_detail2").on({
                    mouseover: function(){
                        $('#acti_detail2').css('display', 'block');
                    },
                    mouseleave: function(){
                        $('#acti_detail2').css('display','none');
                    }
                });
            });

 
   

</Script>
</head>
<body>

<div class="activity_main">
    <div class="navbar_menu">
       
        <span>
            <img src="../../resources/image/actibuddylogo.png" class="nav_logo">
        </span>
        <span id="acti_1">
            <a href="../activity/activity.html">액티비티</a>
        </span>
        <span id="acti_2">
            <a href="../Mate/matemain.html">메이팅</a>
        </span>
        <span>
            <input type="text" placeholder="Search">
        </span>
        <span>
            <button type="button" class="search-btn" onclick="location.href='../activity/searchActivity.html'">Submit</button>
        </span>
        <div id="acti_detail1">
            <div>액티비티</div>
            <div>액티비티 </div>
        </div>
        <div id="acti_detail2">
            <div>메이트 매칭</div>
            <div>메이트 후기</div>
        </div>
    </div>

    <div class="navbar_link">
        <span>
            <a href="../FAQ/FAQ_main.html">FAQ</a>
        </span>
        <span>
            <a href="../singup/signup.html">회원가입</a>
        </span>
        <span>
            <button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button>
        </span>
    </div>

</div>



        <main class="wrapper">
            <div>
            <img src="../../resources/image/actibuddylogo.png" class="mainlogo"> 
             </div>

             <div class="mainsearch">
                 <ul>
                    <input type="text" size="50" placeholder="Search"></li>
                    <button type="submit" class="search-btn" >검색하기</button></li>
                 </ul>
             </div>

        <div class="all1">

        <div class="mainimage">
             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                 <div><h1>서울</h1></div>
                </div>
             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/jeju.jpeg"></a>
                 <div><h1>제주</h1></div>
                </div>
             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/busan.jpeg"></a>
                 <div><h1>부산</h1></div>
                </div>
             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/jeonju.jpeg"></a>
                 <div><h1>전주</h1></div>
                </div>

             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                 <div><h1>강릉</h1></div>
                </div>
             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                 <div><h1>강원</h1></div>
                </div>
             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                 <div><h1>충청</h1></div>
                </div>
             <div class="si">
                 <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                 <div><h1>전라</h1></div>
                </div>

             <!-- <div><a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a></div>
             <div><a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a></div>
             <div><a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a></div>
           
             <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
             <a href="https://www.google.com/"><img src="../../resources/image/jeju.jpeg"></a>
             <a href="https://www.naver.com/"><img src="../../resources/image/busan.jpeg"></a>
             <a href="https://www.naver.com/"><img src="../../resources/image/jeonju.jpeg"></a> -->
        </div>

        <div class="event">
             <a href="https://www.naver.com"><img src="../../resources/image/summerdeal.png"></a>
        </div>
  

            <div class="favoacti">
              <h1>인기 액티비티 </h1>
              <div class="favo">
                    <div>
                        <h3>액티버티 이용자가 선호하는 인기 야외 액티비티</h3> <br><br>
                        <h4>화사한 햇살과 푸른 하늘의 자연과 함께하는 야외 액티비티로 스트레스를 날려버리세요!</h4>
                    </div>
                    <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                     <a href="https://www.google.com/"><img src="../../resources/image/jeju.jpeg"></a>
                     <a href="https://www.naver.com/"><img src="../../resources/image/busan.jpeg"></a>
                </div>
           </div>

            <div class="favoacti">
                <h1>지금 떠나기 좋은 감성 차박/캠핑/피크닉</h1>
               <div class="favo">
                    <img src="../../resources/image/gotogether.png">
                    <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                    <a href="https://www.google.com/"><img src="../../resources/image/jeju.jpeg"></a>
                    <a href="https://www.naver.com/"><img src="../../resources/image/busan.jpeg"></a>
             </div>


             </div>

             <div class="mate">
                <img src="../../resources/image/mate.png">
             </div>

             <div class="mate1">
               <div class="order">
                    <a href="https://www.naver.com/"><img src="../../resources/image/seoul.jpeg"></a>
                    <a href="https://www.google.com/"><img src="../../resources/image/jeju.jpeg"></a>
                    <a href="https://www.naver.com/"><img src="../../resources/image/busan.jpeg"></a>
             </div>
            </div>
        </div>

            
    </main>

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