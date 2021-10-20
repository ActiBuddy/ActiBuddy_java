<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>my-questions</title>
    <link rel="stylesheet" href="../../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../../resources/css/mypage.css">

</head>

<body>


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


    <div class="logo" >
    
        <img src="../../resources/image/mypage/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>
    
    <div class="page-text">
        <h2>해씨초코볼  님의 마이페이지</h2>
    </div>

    <div class="body-all">
    
        
        <div class="side-all">
            
    
            <div class="side-1">
                <br><br><br>
                <img src="../../resources/image/mypage/profile.png" width="100px" height="100px"/>
                <h4>해씨초코볼</h4>
                
                <hr>
                <br>
                <a href="../main/main.html" onclick="alert('로그아웃하시겠습니까?')">로그아웃</a>
                <a href="" id="quit">회원탈퇴</a>
    
                
            </div>
            <div class="side-2">
                
                <br><br>
                <div class="menu">
                    <a href="../mypage/tripList.html">여행 내역</a><br><br><br>
                    <a href="../mypage/review.html">이용 후기</a><br><br><br>
                    <a href="../mypage/cart.html">장바구니</a><br><br><br>
                    <a href="../mypage/mate-list.html">메이트 내역</a><br><br><br> 
                    <a href="../mypage/my-question.html">문의 사항</a><br><br>
                </div>
            </div>

            
        </div>
        
        <div class="a-center-all">

        
            <div class="a-center-1">
                
                <div class="c-center-text">

                    <h3>나의 문의사항</h3>
                    <hr>

                    <h3>제목 : </h3>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <br> <br> <br>
                    <h4>문의 처리 상황 : </h4><br>

                    <button id="l-list">답변 보기</button>
                    <div class="answer">
                        <br>
                        <p>
                            문의하신 문의의 답변입니다.
                        </p>

                    </div>
                    <script>
                        $(function(){
                            $('.answer').slideUp()
                
                            $('#l-list').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script>

                    <hr>

                    <!-- <h3>제목 : </h3>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <br> <br> <br>
                    <h4>문의 처리 상황 : </h4><br>

                    <button id="l-list">답변 보기</button>
                    <div class="answer">
                        <br>
                        <p>
                            문의하신 문의의 답변입니다.
                        </p>

                    </div>
                    <script>
                        $(function(){
                            $('.answer').slideUp()
                
                            $('#l-list').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script> -->

                    


                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
<footer>
    <div class="footer">
        <span></span>

        <ul>2021 액티버디</ul>
        <ul> 회사소개
            <li><a href="../../views/introduce/introduce.html">액티버디소개</a></li>
            <li><a href="../../views/mypage/mypage.html">마이페이지</a></li>

            </ul>

        <ul> 파트너십
            <li><a href="../../views/faq/FAQ_main.html">파트너십</a></li>
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