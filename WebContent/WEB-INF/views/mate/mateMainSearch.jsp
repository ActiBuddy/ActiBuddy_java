<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전체 조회</title>

    <link href="../../resources/css/actibuddy.css" rel="stylesheet">
    <link href="../../resources/css/matemain_search.css" rel="stylesheet">
    <link href="../../resources/css/FAQ.css" rel="stylesheet">

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
            <li><a href="../singup/signup.html">회원가입</a></li>
            <li><button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button></li>
        </ul>
    </nav>

    <!-- 로고 이미지 -->
    <div class="mate_logo">
        <a href="#"><img src="../../resources/image/matematching.png"></a>
      </div>
    <div class="mate_ad">
        <a href="https://www.hyundailivart.co.kr/"><img src="../../resources/image/livartad.png"></a>
    </div>

    <!-- 공지 -->
    <div class="notion">
        (이벤트) 베스트 메이팅 후기에 뽑히면 기프티콘을 드립니다 !
    </div>

    <!-- 검색 결과 -->
    <div class="title_border">
        <img src="../../resources/image/heart.png">
        <div class="t1">
            ' 동행 '
        </div>
        <div class="t2">
            검색결과 : 
        </div>
        <div class="t3">
            6건
        </div>
    </div>
    
    <!-- 결과 리스트 -->
    <div class="list_border">
        <button>전체</button>
    </div>
    <div class="mate_tabs">
        <div class="mtab_content" id="all_content">
          
            <table>
                <thead>
                    <tr>
                    <th scope="cols">번호</th>
                    <th scope="cols" style="width: 1200px;">제목</th>
                    <th scope="cols">작성자</th>
                    <th scope="cols">모집기간</th>
                    <th scope="cols">인원현황</th>
                    <th scope="cols">상태</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <th scope="row">1</th>
                    <td><a href="../Mate/mate_title.html">[전체]   2조 동행 부탁드려요!</a></td>
                    <td>parisbaguette</td>
                    <td>~10/8</td>
                    <td>2/4</td>
                    <td>신청가능</td>
                    </tr>
                    <tr>
                    <th scope="row" >2</th>
                    <td>제목이 들어갑니다.</td>
                    <td>parisbaguette</td>
                    <td>~10/8</td>
                    <td>2/4</td>
                    <td>신청가능</td>
                    </tr>
                    <tr>
                    <th scope="row">3</th>
                    <td>제목이 들어갑니다.</td>
                    <td>parisbaguette</td>
                    <td>~10/8</td>
                    <td>2/4</td>
                    <td>신청가능</td>
                    </tr>
                    <tr>
                    <th scope="row" >4</th>
                    <td>제목이 들어갑니다.</td>
                    <td>parisbaguette</td>
                    <td>~10/8</td>
                    <td>2/4</td>
                    <td>신청가능</td>
                    </tr>
                    <tbody>
                        <tr>
                        <th scope="row">5</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                        </tr>
                        <tr>
                        <th scope="row" >6</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                        </tr>
                        <tr>
                      
                        
                    </tbody>
            </table> 

            <!-- 페이지네이션 & 버튼 -->
            <div class="write-border">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    </ul>
                </nav>
                <button><a href="#">작성하기</a></button>
            </div>
        
            <!-- 검색 -->
            <div class="search">
                <ul>
                <input type="text" class="searchtext" placeholder="동행"></li>
                <button type="submit" class="searchbutton">검색하기</button></li>
                </ul>
            </div>
        </div>
     </div>
</body>

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
</html>