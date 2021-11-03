<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메이트 찾기</title>

    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mate.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    

</head>
<body>

    <!-- 네비게이션바 -->
      <jsp:include page="../common/menubar.jsp"/>
  
    
    <!-- 로고 이미지 -->
    <div class="mate_logo">
      <a href="#"><img src="${ pageContext.servletContext.contextPath }/resources/image//matematching.png"></a>
    </div>

     <!-- 광고 이미지 -->
    <div class="mate_ad">
        <a href="https://www.hyundailivart.co.kr/" target="_blank"><img src="${ pageContext.servletContext.contextPath }/resources/image/livartad.png"></a>
    </div>


     <!-- 메이트 마감 임박 -->
    <div class="mate_hurry1">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_hurry.png">
    </div>

    <div class="mate_hurry2">
        <div class="mate_hurry3">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_one.png">
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
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_two.png">
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
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_three.png">
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
        <img src="${ pageContext.servletContext.contextPath }/resources/image//mate_find.png">
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
                <button onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
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
     
     <!-- 메이팅 후기 -->
    <div class="mate_review1">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_review.png" onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/mate/review';">
    </div>

    <div class="mate_review2">
      	 <c:forEach var="bestReview" items="${ bestReviewList }">
            <div class="mate_review3">
                <a href="/acti/mate/review/select?num=${ bestReview.num }"><img src="${ pageContext.servletContext.contextPath }/resources/image/review/${ bestReview.img1 }"></a>
                <div>
                    ${ bestReview.title }
                </div>
              </div>
          </c:forEach>
     </div>
</body>

   <jsp:include page="../common/footer.jsp"/>
</html>