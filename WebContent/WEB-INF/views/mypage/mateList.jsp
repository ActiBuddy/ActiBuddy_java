<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
        <div class="side-all">
        
            <div class="side-1">
                <br><br><br>
                <img src="${ pageContext.servletContext.contextPath }/resources/image/profile.png" width="100px" height="100px"/>
                
                <c:if test="${ !empty sessionScope.loginMember }">
		
        			<h4 align="center"><c:out value="${ sessionScope.loginMember.userName }"/></h4>

				</c:if>
                
                
                <hr>
                <br>

                <a href="/acti/mypage/quit" id="quit">회원탈퇴</a>
    
                
            </div>
            <div class="side-2">
                
                <br><br>
                <div class="menu">
                    <a href="${ pageContext.servletContext.contextPath }/mypage/triplist">여행 내역</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/review">이용 후기</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/cart">장바구니</a><br><br><br>
                    <a href="${ pageContext.servletContext.contextPath }/mypage/matelist">메이트 내역</a><br><br><br> 
                    <a href="${ pageContext.servletContext.contextPath }/mypage/myQuestion">문의 사항</a><br><br>
                </div>
            </div>

            
        </div>
        
        <div class="a-center-all">

            <div class="a-buttons">
                <button type="button" id="one" class="forgreen">메이트 내역</button>

            </div>

            <div class="a-center-1">
                
                <div class="l-center-text">
                    <h3>메이트 신청한 내역</h3>
                    <hr>
                    <div class="l-one-line">

                        <img src="../resources/image/hreart.png" width="32px" height="30px">
                        <span></span>
                        <h3>메이팅 구인 제목 및 날짜 </h3>
                        <button type="button" onclick="location.href=''">댓글 확인하기</button>
                        <br><br>
                    </div>

                        <h4>희망인원 : <br> 희망성별 : </h4>
                        <br><br>
                        <button type="button" id="complete">신청완료</button>
                        <br>
                        <hr>

                     <div class="l-one-line">

                        <img src="../resources/image/hreart.png" width="32px" height="30px">
                        <span></span>
                        <h3>메이팅 구인 제목 및 날짜 </h3>
                        
                        <br><br>
                    </div>

                        <h4>희망인원 : <br> 희망성별 : </h4>
                        <br><br>
                        <button type="button" id="reviewGo" onclick="location.href='/acti/mypage/mate/review/write'">후기쓰기</button>
                        <button type="button" id="complete">참가완료</button>
                        <br>
                        <hr>
                    <h3>메이트 신청받은 내역</h3>
                    <hr>
                    <div class="l-one-line">

                        <img src="../resources/image/hreart.png" width="32px" height="30px">
                        <span></span>
                        <h3>메이팅 구인 제목 및 날짜 </h3>
                        <button type="button" onclick="location.href=''">상세보기 ></button>
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