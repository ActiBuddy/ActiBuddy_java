<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<c:set var="hurry" value="${ hurryFindList }"/>
    <div class="mate_hurry2">
        <div class="mate_hurry3">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_one.png">
            <span class="h_title">
                ${ hurry[0].title }
            </span>
            <span class="h_text">
                ${ hurry[0].userId }<br><br>
                인원:${ hurry[0].count }/${ hurry[0].people }<br><br>
                <c:if test="${ hurry[0].age eq 0 }">
                희망연령:연령무관<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 23 }">
                희망연령:20대~30대<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 34 }">
                희망연령:30대~40대<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 45 }">
                희망연령:40대~50대<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 56 }">
                희망연령:50대~60대<br><br>
                </c:if> 
                <c:if test="${ hurry[0].gender eq 'B' }">
                남녀무관
                </c:if>
                <c:if test="${ hurry[0].gender eq 'W' }">
                여성만
                </c:if>
                <c:if test="${ hurry[0].gender eq 'M' }">
                남성만
                </c:if>
            </span>
            <span class="h_date">
            ~<fmt:formatDate value="${ hurry[0].deadline }" type="date" pattern="MM/dd"/><br> 
            </span>
            <span class="h_btn">
                <button onclick="location.href='/acti/mate/find/select?num=${ hurry[0].num }'">신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_two.png">
            <span class="h_title">
                ${ hurry[1].title }
            </span>
            <span class="h_text">
                ${ hurry[1].userId }<br><br>
                인원:${ hurry[1].count }/${ hurry[1].people }<br><br>
                <c:if test="${ hurry[1].age eq 0 }">
                희망연령:연령무관<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 23 }">
                희망연령:20대~30대<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 34 }">
                희망연령:30대~40대<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 45 }">
                희망연령:40대~50대<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 56 }">
                희망연령:50대~60대<br><br>
                </c:if> 
                <c:if test="${ hurry[1].gender eq 'B' }">
                남녀무관
                </c:if>
                <c:if test="${ hurry[1].gender eq 'W' }">
                여성만
                </c:if>
                <c:if test="${ hurry[1].gender eq 'M' }">
                남성만
                </c:if>
            </span>
            <span class="h_date">
             ~<fmt:formatDate value="${ hurry[1].deadline }" type="date" pattern="MM/dd"/><br>
            </span>
            <span class="h_btn">
                <button onclick="location.href='/acti/mate/find/select?num=${ hurry[1].num }'">신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_three.png">
            <span class="h_title">
                ${ hurry[2].title }
            </span>
            <span class="h_text">
                ${ hurry[2].userId }<br><br>
                인원:${ hurry[2].count }/${ hurry[2].people }<br><br>
                <c:if test="${ hurry[2].age eq 0 }">
                희망연령:연령무관<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 23 }">
                희망연령:20대~30대<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 34 }">
                희망연령:30대~40대<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 45 }">
                희망연령:40대~50대<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 56 }">
                희망연령:50대~60대<br><br>
                </c:if> 
                <c:if test="${ hurry[2].gender eq 'B' }">
                남녀무관
                </c:if>
                <c:if test="${ hurry[2].gender eq 'W' }">
                여성만
                </c:if>
                <c:if test="${ hurry[2].gender eq 'M' }">
                남성만
                </c:if>
            </span>
            <span class="h_date">
              ~<fmt:formatDate value="${ hurry[2].deadline }" type="date" pattern="MM/dd"/><br>
            </span>
            <span class="h_btn">
                <button onclick="location.href='/acti/mate/find/select?num=${ hurry[2].num }'">신청하러가기</button>
            </span>
        </div>
    </div>
    
    
     <!-- [탭]메이트 찾기 -->
    <div class="mate_find1">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_find.png">
    </div>
   
    <div class="mate_tabs">
        <!-- <input id="all" type="radio" name="mtab_item" checked> -->
        
        <a href="/acti/mate/main?location=a"><label class="mtab_item" id="all" for="all" onclick="check1(this);">전체</label></a>
        <a href="/acti/mate/main?location=b"><label class="mtab_item" id="seoul" for="seoul" onclick="check1(this);">서울</label></a>
        <a href="/acti/mate/main?location=c"><label class="mtab_item" id="gyeonggi" for="gyeonggi" onclick="check1(this);">경기</label></a>
        <a href="/acti/mate/main?location=d"><label class="mtab_item" id="gangwon" for="gangwon" onclick="check1(this);">강원</label></a>
        <a href="/acti/mate/main?location=e"><label class="mtab_item" id="chungcheong" for="chungcheong" onclick="check1(this);">충청</label></a>
        <a href="/acti/mate/main?location=f"><label class="mtab_item" id="jeolla" for="jeolla" onclick="check1(this);">전라</label></a>
        <a href="/acti/mate/main?location=g"><label class="mtab_item" id="gyeongsang" for="gyeongsang" onclick="check1(this);">경상</label></a>
        <a href="/acti/mate/main?location=h"><label class="mtab_item" id="busan" for="busan" onclick="check1(this);">부산</label></a>
        <a href="/acti/mate/main?location=i"><label class="mtab_item" id="jeju" for="jeju" onclick="check1(this);">제주</label></a>
        <!-- **** 탭 누르는거 시작 **** -->
        <script>
        
         $(document).ready(function(){

            let location = '${ location1 }';
         	if(location == ''){
         		location = "a";
         	}
         	
         	let localName = '';
         	switch(location) {
    		case "a": localName="all";break;
    		case "b": localName="seoul"; break;
    		case "c": localName="gyeonggi"; break;
    		case "d": localName="gangwon"; break;
    		case "e": localName="chungcheong"; break;
    		case "f": localName="jeolla"; break;
    		case "g": localName="gyeongsang"; break;
    		case "h": localName="busan"; break;
    		case "i": localName="jeju"; break;
    		}
         	
         	
         	
         		
         	let data = $('.mtab_content');
         	
         	for(let i = 0; i < data.length; i++){
				
				if(data[i].id == (localName+'_content')){
					data[i].style="display:block;";
					/* $(data[i]).css("display","block"); */
				}else {
					data[i].style="display:none;";
				/* 	$(data[i]).css("display","none");		 */				
				}
			}
						
         	
         	
         			
     	});

         


        </script>
        
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
                  <c:forEach var="find" items="${ findList }">
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:forEach>
                </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main" method="get">
	               <input type="hidden" id="searchCondition" name="location" value="a">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
                <c:forEach var="find" items="${ findList }">
                <c:if test='${ find.location eq "서울" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
				</c:if>
                </c:forEach>
             </tbody>
        </table>
         <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main" method="get">
	               <input type="hidden" id="searchCondition" name="location" value="b">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
                  <c:forEach var="find" items="${ findList }">
                  <c:if test='${ find.location eq "경기" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main?location=${ location }" method="get">
	            <input type="hidden" id="searchCondition" name="location" value="c">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
                  <c:forEach var="find" items="${ findList }">
                  <c:if test='${ find.location eq "강원" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main?location=${ location }" method="get">
	            <input type="hidden" id="searchCondition" name="location" value="d">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
                  <c:forEach var="find" items="${ findList }">
                  <c:if test='${ find.location eq "충청" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main?location=${ location }" method="get">
	            <input type="hidden" id="searchCondition" name="location" value="e">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
                  <c:forEach var="find" items="${ findList }">
                  <c:if test='${ find.location eq "전라" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main?location=${ location }" method="get">
	            <input type="hidden" id="searchCondition" name="location" value="f">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
                  <c:forEach var="find" items="${ findList }">
                  <c:if test='${ find.location eq "경상" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main?location=${ location }" method="get">
	            <input type="hidden" id="searchCondition" name="location" value="g">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
                  <c:forEach var="find" items="${ findList }">
                  <c:if test='${ find.location eq "부산" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main?location=${ location }" method="get">
	            <input type="hidden" id="searchCondition" name="location" value="h">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
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
     	   		 
                  <c:forEach var="find" items="${ findList }">
                  <c:if test='${find.location eq "제주" }'>
                  <tr>
                  <th scope="row">${ find.num }</th>
                  <td><a href="/acti/mate/find/select?num=${ find.num }&location=${ find.location }">[${ find.location }] ${ find.title }</a></td>
                  <td><a href="/acti/mypage/main?userId=${ find.userId }">${ find.userId }</td>
                  <td>${ find.deadline }</td>
                  <td>${ find.count }/${ find.people }</td>
                  <td>${ find.state }</td>
                  </tr>
                  </c:if>
                  
                  
                  </c:forEach>
                  
                   <c:if test='${ empty (find.location eq "제주") }'>
                  <tr>
                  <td>값이 없습니다.</td>
                  </tr>
                  </c:if>
                  
            </tbody>
            </table>
            
            <!-- 작성하기버튼 로그인처리 -->
		   <c:if test="${ !empty sessionScope.loginMember }">
	       <button class="write" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/find/regist'">작성하기</button>
	       </c:if>
	       
            <!-- pagination -->
     	   <jsp:include page="../common/pagingF.jsp"/>	
       
        	<!-- 검색 부분 -->
           <div class="search">
	           <form id="searchForm" action="${ pageContext.servletContext.contextPath }/mate/main?location=${ location }" method="get">
	            <input type="hidden" id="searchCondition" name="location" value="i">
	               <input type="hidden" name="currentPage" value="1">
	               <input type="search" id="searchValue" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">
	               <button type="submit" class="searchbutton">검색하기</button>
			   </form>
           </div>
    </div>

     <!-- **** 탭 누르는거 끝 **** -->
     </div>
     </div>
     
     <!-- 메이팅 후기 -->
    <div class="mate_review1">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_review.png" onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/mate/main';">
    </div>

    <div class="mate_review2">
      	 <c:forEach var="newReview" items="${ newReviewList }">
            <div class="mate_review3">
                <a href="/acti/mate/review/select?num=${ newReview.num }"><img src="${ pageContext.servletContext.contextPath }/resources/image/review/${ newReview.img1 }"></a>
                <div>
                    ${ newReview.title }
                </div>
              </div>
          </c:forEach>
     </div>
</body>

	<!-- 페이징 스크립트 -->
	<script>
	
        const link = "${ location.href }";
		let searchText = "";
		
		if(${ !empty requestScope.selectCriteria.searchCondition? true: false }) {
			searchText += "&searchCondition=${ requestScope.selectCriteria.searchCondition }";
		}
		
		if(${ !empty requestScope.selectCriteria.searchValue? true: false }) {
			searchText += "&searchValue=${ requestScope.selectCriteria.searchValue }";
		}
		
		if(document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function() {
				location.href = link + "?currentPage=1" + searchText;
			}
		}
		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo - 1 }" + searchText;
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo + 1 }" + searchText;
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.maxPage }" + searchText;
			}
		}
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text + searchText;
		}
	</script>

   <jsp:include page="../common/footer.jsp"/>
</html>