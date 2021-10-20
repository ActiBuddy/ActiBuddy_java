<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>memQuit</title>
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

    <div class="q-body-all">
        <br><br>
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

        </div>

        <div class="q-center-all">

            <div class="q-center-1">

                <div class="q-text">

                    <h1>회원 탈퇴</h1><br>
                    <p>액티버디 계정 및 개인정보 삭제 요청이 접수되었습니다.아쉽지만,<br>
                    가까운 시일 내에 다시 뵐 수 있기를 바랍니다!<br>
                     회원님의 액티버디 계정이 영구적으로 삭제되며, 이후에는 더 이상<br> 
                     계정 접근이 불가합니다.<br>
                     다음에 액티버디를 다시 이용하시려면 새로운 계정을 생성하셔야 합니다. <br>
                     계정삭제시 액티버디에서 진행 중인 예약 또는 이용권한이 모두 사라집니다.<br>
                     <br>
                     계정 삭제를 계속 진행하시려면 '다음' 버튼을 클릭하세요.</p>
                </div>
                <br><br><br>
                <div class="q-check">

                    <input type="checkbox" id="a">
                    <label for="a">위의 내용을 모두 읽었으며 이에 동의합니다.</label>
                    <br><br><br>
                    
                </div>

                <button type="button" onclick="location.href='memQuit-2.html'">다음</button>

        
                
        
               
    
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