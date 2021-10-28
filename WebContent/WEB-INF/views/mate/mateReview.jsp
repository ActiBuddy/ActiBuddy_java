<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>메이트 리뷰</title>

    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mateReview.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <title>메이팅 후기</title>
  </head>
  <body>
      <!-- 네비게이션바 -->
       <jsp:include page="../common/menubar.jsp"/>

    <!-- 주요 html -->
    <div class="around">
        <!-- 로고 이미지 -->
        <div class="mate_logo">
            <a href="#"><img src="${ pageContext.servletContext.contextPath }/resources/image/matereview.png"></a>
          </div>
          <!-- 광고 이미지 -->
          <div class="mate_ad">
              <a href="https://www.hyundailivart.co.kr/"><img src="${ pageContext.servletContext.contextPath }/resources/image/livartad.png"></a>
          </div>
      
          <!-- 베스트 메이팅 후기 -->
          <div class="mate_review1">
              <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_best.png">
      
          </div>
      
      
          <div class="mate_review2">
              <div>
              <a href="https://www.hyundailivart.co.kr/"><img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png"></a>
              </div>
              <div>
              <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
              </div>
              <div>
              <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
              </div>
              <div>
              <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
              </div>
              <div>
              <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
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
        
        <!-- 메이팅 후기 -->
        <c:forEach var="review" items="${ reviewList }">
        <div class="mate_review4">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_review.png">
        </div>

        <div class="review_border">
            <div class="mate_review5">
                <div class="mate_review6">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/${ review.img1 }">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                </div>
                <div class="mate_review7">${ review.title }
                </div>
                     
                <div class="mate_review7">${ review.title }
                </div>
                <div class="mate_review7">${ review.title }
                </div>
                <div class="mate_review8">parisbaguette</div>
                <div class="mate_review8">parisbaguette</div>
                <div class="mate_review8">parisbaguette</div>
                <div class="mate_review9">2021.10.14  ・ 조회 34</div>
                <div class="mate_review9">2021.10.14  ・ 조회 34</div>
                <div class="mate_review9">2021.10.14  ・ 조회 34</div>
            </div>
            <div class="mate_review5">
                <div class="mate_review6">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                </div>
                <div class="mate_review7">서핑엔 노을이 빠질 수 없죠
                    <div class="com">[1]</div>
                </div>
                <div class="mate_review7">서핑엔 노을이 빠질 수 없죠
                    <div class="com">[2]</div>
                </div>
                <div class="mate_review7">서핑엔 노을이 빠질 수 없죠
                    <div class="com"></div>
                </div>
                <div class="mate_review8">noeul</div>
                <div class="mate_review8">noeul</div>
                <div class="mate_review8">noeul</div>
                <div class="mate_review9">2021.10.12  ・ 조회 24</div>
                <div class="mate_review9">2021.10.12  ・ 조회 24</div>
                <div class="mate_review9">2021.10.12  ・ 조회 24</div>
            </div>
            <div class="mate_review5">
                <div class="mate_review6">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/scuba_diving1.png">
                </div>
                <div class="mate_review7">스노보드 친구가 많아졌어요
                    <div class="com">[1]</div>
                </div>
                <div class="mate_review7">스노보드 친구가 많아졌어요
                    <div class="com">[2]</div>
                </div>
                <div class="mate_review7">스노보드 친구가 많아졌어요
                    <div class="com"></div>
                </div>
                <div class="mate_review8">skyhigh</div>
                <div class="mate_review8">skyhigh</div>
                <div class="mate_review8">skyhigh</div>
                <div class="mate_review9">2021.10.11  ・ 조회 19</div>
                <div class="mate_review9">2021.10.11  ・ 조회 19</div>
                <div class="mate_review9">2021.10.11  ・ 조회 19</div>
            </div>
           </c:forEach>
        </div>

       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/review/regist'">작성하기</button>
       <jsp:include page="../common/paging.jsp"/>
        <!-- 검색 부분 -->
        <div class="search">
            <ul>
               <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
               <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </div>
	
    <!-- 진짜 div -->
    </div>

   <jsp:include page="../common/footer.jsp"/>
    </body>
  </html>
