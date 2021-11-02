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
            <img src="${ pageContext.servletContext.contextPath }/resources/image/matereview.png" onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/mate/review';" >
          
          </div>
          <!-- 광고 이미지 -->
          <div class="mate_ad">
              <a href="https://www.hyundailivart.co.kr/" target="_blank"><img src="${ pageContext.servletContext.contextPath }/resources/image/livartad.png"></a>
          </div>
      
          <!-- 1)베스트 메이팅 후기 -->
          <div class="mate_review1">
              <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_best.png">
      
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
         
        <!-- 2)메이팅 후기 -->
        <div class="mate_review4">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_review.png">
        </div>

        <div class="review_border">
        
	        <c:forEach var="review" items="${ reviewList }">
            <div class="mate_review5">
                <div class="mate_review6">
                   <a href="/acti/mate/review/select?num=${ review.num }"> <img src="${ pageContext.servletContext.contextPath }/resources/image/review/${ review.img1 }"></a>
                </div>
                <div class="mate_review7"><a href="/acti/mate/review/select?num=${ review.num }">${ review.title }</a></div>
                <div class="mate_review8"><a href="/acti/mypage/main?userId=${ review.userId }">${ review.userId }</a></div>
                <div class="mate_review9">${ review.date }</div>
                <div class="mate_review10">추천수 : ${ review.recommend }</div>
            </div>
         
           </c:forEach>
        </div>
        
       <!-- 작성하기버튼 로그인처리 -->
	   <c:if test="${ !empty sessionScope.loginMember }">
       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/review/regist'">작성하기</button>
       </c:if>
       
       <!-- pagination -->
       <jsp:include page="../common/paging.jsp"/>
       
        <!-- 검색 부분 -->
        <div class="search">
        <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/review" method="get">
               <input type="hidden" name="currentPage" value="1">
               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
               <button type="submit" class="searchbutton">검색하기</button>
		</form>
        </div>
    <!-- 진짜 div -->
    </div>

   <jsp:include page="../common/footer.jsp"/>
    </body>
  </html>
