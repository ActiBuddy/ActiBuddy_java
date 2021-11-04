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
    
        <img src="../resources/image/mainlogo.png" width="400px" height="350px" />
        
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
                    <c:forEach var="size" begin="0" end="${  fn:length(mtApply.applyList) - 1 }">
                    <div class="l-one-line">

                        <img src="../resources/image/hreart.png" width="32px" height="30px">
                        <span></span>
                        <h3>${ mtApply.findList[size].title }</h3>
                        <button type="button" onclick="location.href=''">댓글 확인하기</button>
                        <br><br>
                    </div>

                        <h4>희망인원 : ${ mtApply.findList[size].people } 명<br> 희망성별 : 
                        <c:choose>
					    <c:when test="${ mtApply.findList[size].gender eq 'M' }">
					    남자
					    </c:when>
					    <c:when test="${ mtApply.findList[size].gender eq 'W' }">
					    여자
					    </c:when>
					    <c:when test="${ mtApply.findList[size].gender eq 'B' }">
					    남녀 무관
					    </c:when>
					    </c:choose>
                        </h4>
                        <br><br>
                        <form action="${ pageContext.servletContext.contextPath }/mypage/mate/score/write" method="post">
                        <input type="submit" id="reviewGo" value="후기쓰기">
                        <input type="hidden" name="title" value="${ mtApply.findList[size].title }">
                        <input type="hidden" name="mateId" value="${ mtApply.findList[size].userId }">
                        </form>
                        <button type="button" id="complete">${ mtApply.findList[size].state }</button>
                        <br>
                        <hr>
                        </c:forEach>
                        </c:when>
                        <c:otherwise>
                        <h1> 아직 신청한 메이트 내역이 없습니다.</h1>
                        </c:otherwise>
                        </c:choose>

                        
                    <h3>메이트 신청받은 내역</h3>
                    <hr>
                    <div class="l-one-line">

                        <img src="../resources/image/hreart.png" width="32px" height="30px">
                        <span></span>
                        <h3>메이팅 구인 제목 및 날짜 </h3>
                        <button type="button" onclick="location.href='/acti/'">상세보기 ></button>
                        <br><br>
                    </div>
                    
                    <button id="l-list">메이트 구인 내역</button>
                    <div class="people">
                        <br>
                        <h4>신청자 : 김준희</h4><br>
                        <h4>신청자 : 김준희</h4><br>
                        <h4>신청자 : 김준희</h4>
                        <!-- <buttont type="submit" id="okay">수락</button>
                        <buttont id="no">거절</button> -->

                    </div>
                    <script>
                        $(function(){
                            $('.people').slideUp()
                
                            $('#l-list').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script>
                    <br><br><br><br><br><br><br>
                    <button class="forgreen" id="magam">마감하기</button>
                    <hr>

                

                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>