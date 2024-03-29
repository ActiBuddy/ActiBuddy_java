<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>메이트 내역</title>

</head>

<body>


     <jsp:include page="../common/menubar.jsp"/>


    <div class="logo" >
    
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>
    
    <c:if test="${ !empty sessionScope.loginMember }">
		<div class="page-text">

        	<h2><c:out value="${ sessionScope.loginMember.userName }"/>님의 마이페이지</h2>
        	
		</div>
	</c:if>



    <div class="body-all">
    
                <jsp:include page="../common/mypagesidebar.jsp"/>
        
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" id="one" class="forgreen">메이트 내역</button>

            </div>

            <div class="a-center-1">
                <div class="l-center-text">
                    <h3>메이트 신청한 내역</h3>
                    <hr>
                    <c:choose>
				    <c:when test="${  not empty mtApply }">
                    <c:forEach var="mt" items="${ mtApply }">
                    <div class="l-one-line">

                        <img src="${ pageContext.servletContext.contextPath }/resources/image/hreart.png" width="32px" height="30px">
                        <span></span>
                        <h3>${ mt.title }</h3>
                        <button type="button" onclick="location.href=''">댓글 확인하기</button>
                        <br><br>
                    </div>

                        <h4>희망인원 : ${ mt.people } 명<br> 희망성별 : 
                        <c:choose>
					    <c:when test="${ mt.gender eq 'M' }">
					    남자
					    </c:when>
					    <c:when test="${ mt.gender eq 'W' }">
					    여자
					    </c:when>
					    <c:when test="${ mt.gender eq 'B' }">
					    남녀 무관
					    </c:when>
					    </c:choose>
                        </h4>
                        <br><br>
                        <form action="${ pageContext.servletContext.contextPath }/mypage/mate/score/write" method="post">
                        <input type="submit" id="reviewGo" value="후기쓰기">
                        <input type="hidden" name="title" value="${ mt.title }">
                        <input type="hidden" name="mateId" value="${ mt.userId }">
                        <input type="hidden" name="num" value="${ mt.num }">
                        </form>
                        <button type="button" id="complete">${ mt.state }</button>
                        <br>
                        <hr>
                        </c:forEach>
                        </c:when>
                        <c:otherwise>
                        <h2> 아직 신청한 메이트 내역이 없습니다.</h2><hr>
                        </c:otherwise>
                        </c:choose>
                        
                        
                    <c:choose>
                    <c:when test="${ not empty mtApplyList2}">
                    <h3>메이트 신청받은 내역</h3>
                 <c:forEach items="${mtApplyList2}" var="apply">
                    <hr>
                      <div class="l-one-line">

                        <img src="../resources/image/hreart.png" width="32px" height="30px">

                        <span></span>
                        	<h3>${ apply.title }</h3>
                        <button type="button" onclick="location.href=''">상세보기 ></button>
                        <br><br>
                    </div>
                    
                    <button id="l-list${ apply.num }" class="l-list">메이트 구인 내역</button>
                      <div class="people">
                       <c:forEach items="${ apply.applyList}" var="app">
	                         <br>
	                         <!-- MT_APPLY_HIS에서 신청한 아이디 가져오기 -->         
	                        <h4>신청자 : ${app.appliedId}</h4>
                       	
	                        <!-- 신청한 아이디 히든으로 넘겨주고 -->
                    <form action="../mypage/matelist" method="post" id="formok"> <!-- // 가져오고 나서 update해주기     -->
	                    <input type="hidden"  name="appliedId" value="${app.appliedId}">
	                    <input type="hidden"  name="findNum" value="${apply.num}">
							<c:set value="${app.accYn}" var="state"/>
	                       <c:if test="${state eq 'L'.charAt(0)}">
	                        <button type="submit" value="Y" name="yes" id="okaya">수락</button>
	                       </c:if>
                    </form>
                    <form action="../mypage/matelist" method="post" id="formno"> <!-- // 가져오고 나서 update해주기     -->
	                        <input type="hidden"  name="appliedId" value="${app.appliedId}">
	                        <input type="hidden"  name="findNum" value="${apply.num}">
	                        <c:set value="${app.accYn}" var="state"/>
	                        <c:if test="${state eq 'L'.charAt(0)}">
	                        <button type="submit" value="X"  name="no" id="nop">거절</button><br>
	                        </c:if>
	                       <c:if test="${state eq 'Y'.charAt(0)}">
	                       <h5 style="margin-bottom: 10px; margin-top: 0px;">수락됨</h5>
	                       </c:if>
	                       <c:if test="${state eq 'X'.charAt(0)}">
	                       <h5 style="margin-bottom: 10px; margin-top: 0px;">거절됨</h5>
	                       </c:if>
                    </form>
                        </c:forEach> 
                      </div>
                      
                    <br><br><br><br><br>
                    <!-- 마감하기 누르면  -> MT_FIND_STATE 신청마감으로 업데이트 -->
	                   <form action="../mypage/matelist" method="post">
	                    <input type="hidden" name="findNum" value="${ apply.num}">
		                    <c:if test='${apply.state eq "신청가능"}'>
		                    	<button type="submit" class="forgreen" id="magam">마감하기</button>
		                    </c:if>
		                    <c:if test='${apply.state eq "신청마감"}'>
		                    	<button type="button" id="magam" value="magam" name="magam" style="border: none; color: darkgray;">마감완료</button>
		                    </c:if>
	                   </form>

	                    <script>
	                        $(function(){
	                            $('.people').slideUp()
	              
	                            $('#l-list${ apply.num }').click(function(){
	                                $(this).next('div').slideToggle();
	                            });
	                        });
	                        
	                        var btn = document.getElementById('btn-world');
	                        btn.disabled = 'disabled';
	                    </script>
					<br>
                  <br>
                  </c:forEach>
                  </c:when>
                  <c:otherwise>
                        <h2> 아직 신청받은 메이트 내역이 없습니다.</h2><hr>
                  </c:otherwise>
				</c:choose>
                </div>
				

    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>