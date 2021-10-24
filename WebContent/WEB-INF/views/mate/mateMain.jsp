<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메이트 찾기</title>

    <link href="../../resources/css/actibuddy.css" rel="stylesheet">
    <link href="../../resources/css/mate.css" rel="stylesheet">
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

     <!-- 광고 이미지 -->
    <div class="mate_ad">
        <a href="https://www.hyundailivart.co.kr/"><img src="../../resources/image/livartad.png"></a>
    </div>

     <!-- 메이팅 후기 -->
    <div class="mate_review1">
        <img src="../../resources/image/mate_review.png">

    </div>


    <div class="mate_review2">
        <div>
        <a href="https://www.hyundailivart.co.kr/"><img src="../../resources/image/scuba_diving1.png"></a>
        </div>
        <div>
        <img src="../../resources/image/scuba_diving1.png">
        </div>
        <div>
        <img src="../../resources/image/scuba_diving1.png">
        </div>
        <div>
        <img src="../../resources/image/scuba_diving1.png">
        </div>
        <div>
        <img src="../../resources/image/scuba_diving1.png">
        </div>
    </div>

    <div class="mate_review3">
        <div>
            스쿠버완
        </div>
        <div>
            스쿠버투
        </div>
        <div>
            스쿠버쓰리
        </div>
        <div>
            스쿠버포
        </div>
        <div>
            스쿠버파이브
        </div>
    </div>

     <!-- 메이트 마감 임박 -->
    <div class="mate_hurry1">
        <img src="../../resources/image/mate_hurry.png">
    </div>

    <div class="mate_hurry2">
        <div class="mate_hurry3">
            <img src="../../resources/image/mate_one.png">
            <span class="h_title">
                같이 여수갈 사람 구해요
            </span>
            <span class="h_text">
                parisbaguette<br><br>
                인원:2/6<br><br>
                희망연령:20대,30대<br><br>
                남녀무관
            </span>
            <span class="h_date">
                ~10/17
            </span>
            <span class="h_btn">
                <button>신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="../../resources/image/mate_two.png">
            <span class="h_title">
                같이 여수갈 사람 구해요
            </span>
            <span class="h_text">
                parisbaguette<br><br>
                인원:2/6<br><br>
                희망연령:20대,30대<br><br>
                남녀무관
            </span>
            <span class="h_date">
                ~10/17
            </span>
            <span class="h_btn">
                <button>신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="../../resources/image/mate_three.png">
            <span class="h_title">
                같이 여수갈 사람 구해요
            </span>
            <span class="h_text">
                parisbaguette<br><br>
                인원:2/6<br><br>
                희망연령:20대,30대<br><br>
                남녀무관
            </span>
            <span class="h_date">
                ~10/17
            </span>
            <span class="h_btn">
                <button>신청하러가기</button>
            </span>
        </div>
    </div>

     <!-- 메이트 찾기 -->
    <div class="mate_find1">
        <img src="../../resources/image/mate_find.png">
    </div>
   
    <div class="mate_tabs">
        <input id="all" type="radio" name="mtab_item" checked>
        <label class="mtab_item" for="all">전체</label>
        <input id="seoul" type="radio" name="mtab_item">
        <label class="mtab_item" for="seoul">서울</label>
        <input id="gyeonggi" type="radio" name="mtab_item">
        <label class="mtab_item" for="gyeonggi">경기</label>
        <input id="gangwon" type="radio" name="mtab_item">
        <label class="mtab_item" for="gangwon">강원</label>
        <input id="chungcheong" type="radio" name="mtab_item">
        <label class="mtab_item" for="chungcheong">충청</label>
        <input id="jeolla" type="radio" name="mtab_item">
        <label class="mtab_item" for="jeolla">전라</label>
        <input id="gyeongsang" type="radio" name="mtab_item">
        <label class="mtab_item" for="gyeongsang">경상</label>
        <input id="busan" type="radio" name="mtab_item">
        <label class="mtab_item" for="busan">부산</label>
        <input id="jeju" type="radio" name="mtab_item">
        <label class="mtab_item" for="jeju">제주</label>
        <!-- **** 탭 누르는거 시작 **** -->
        <!-- 전체 탭 -->
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
                      <td><a href="../Mate/mate_title.html">[전체]   2조 소회의실 부탁드려요!</a></td>
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
                          <th scope="row">7</th>
                          <td>제목이 들어갑니다.</td>
                          <td>parisbaguette</td>
                          <td>~10/8</td>
                          <td>2/4</td>
                          <td>신청가능</td>
                        </tr>
                        <tr>
                           <th scope="row" >8</th>
                           <td>제목이 들어갑니다.</td>
                           <td>parisbaguette</td>
                           <td>~10/8</td>
                           <td>2/4</td>
                           <td>신청가능</td>
                        </tr>
                        <tr>
                            <th scope="row">9</th>
                            <td>제목이 들어갑니다.</td>
                            <td>parisbaguette</td>
                            <td>~10/8</td>
                            <td>2/4</td>
                            <td>신청가능</td>
                          </tr>
                          <tr>
                             <th scope="row" >10</th>
                             <td>제목이 들어갑니다.</td>
                             <td>parisbaguette</td>
                             <td>~10/8</td>
                             <td>2/4</td>
                             <td>신청가능</td>
                          </tr>
                          
                    </tbody>
            </table>
            <div class="write-border">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                          <span aria-hidden="true">&laquo;</span>
                        </a>
                      </li>
                      <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                      <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                      <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                      <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                      <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                          <span aria-hidden="true">&raquo;</span>
                        </a>
                      </li>
                    </ul>
                  </nav>
                <button><a href="#">작성하기</a></button>
            </div>
        
            <div class="search">
                <ul>
                   <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
                   <button type="submit" class="searchbutton">검색하기</button></li>
                </ul>
            </div>
        </div>
    

    <!-- 서울 탭 -->

    <div class="mtab_content" id="seoul_content">
          
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
                  <td><a href="../Mate/mate_title.html">[서울]  2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>

    <!-- 경기 탭 -->
    <div class="mtab_content" id="gyeonggi_content">
          
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
                  <td><a href="../Mate/mate_title.html">[경기]  2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>
    <!-- 강원 탭 -->
    <div class="mtab_content" id="gangwon_content">
          
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
                  <td><a href="../Mate/mate_title.html">[강원]  2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>
    <!-- 충청 탭 -->
    <div class="mtab_content" id="chungcheong_content">
          
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
                  <td><a href="../Mate/mate_title.html">[충청]  2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>
    <!-- 전라 탭 -->
    <div class="mtab_content" id="jeolla_content">
          
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
                  <td><a href="../Mate/mate_title.html">[전라]  2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>
    <!-- 경상 탭 -->
    <div class="mtab_content" id="gyeongsang_content">
          
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
                  <td><a href="../Mate/mate_title.html">[경상]  2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>
    <!-- 부산 탭 -->
    <div class="mtab_content" id="busan_content">
          
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
                  <td><a href="../Mate/mate_title.html">[부산]  2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>
    <!-- 제주 탭 -->
    <div class="mtab_content" id="jeju_content">
          
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
                  <td><a href="../Mate/mate_title.html">[제주] 2조 소회의실 부탁드려요!</a></td>
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
                      <th scope="row">7</th>
                      <td>제목이 들어갑니다.</td>
                      <td>parisbaguette</td>
                      <td>~10/8</td>
                      <td>2/4</td>
                      <td>신청가능</td>
                    </tr>
                    <tr>
                       <th scope="row" >8</th>
                       <td>제목이 들어갑니다.</td>
                       <td>parisbaguette</td>
                       <td>~10/8</td>
                       <td>2/4</td>
                       <td>신청가능</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>제목이 들어갑니다.</td>
                        <td>parisbaguette</td>
                        <td>~10/8</td>
                        <td>2/4</td>
                        <td>신청가능</td>
                      </tr>
                      <tr>
                         <th scope="row" >10</th>
                         <td>제목이 들어갑니다.</td>
                         <td>parisbaguette</td>
                         <td>~10/8</td>
                         <td>2/4</td>
                         <td>신청가능</td>
                      </tr>
                      
                </tbody>
        </table>
        <div class="write-border">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                  <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            <button><a href="#">작성하기</a></button>
        </div>
    
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
    </div>

     <!-- **** 탭 누르는거 끝 **** -->
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