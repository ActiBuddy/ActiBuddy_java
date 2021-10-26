<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>my-questions</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">

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

        
            <div class="a-center-1">
                
                <div class="c-center-text">
					
					<c:if test="${ !empty sessionScope.loginMember }">
		
        			<h3><c:out value="${ sessionScope.loginMember.userName }"/> 님의 문의사항</h3>

				</c:if>

                    <hr>

                    <h3>제목 : </h3>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <br> <br> <br>
                    <h4>문의 처리 상황 : </h4><br>

                    <button id="l-list">답변 보기</button>
                    <div class="answer">
                        <br>
                        <p>
                            문의하신 문의의 답변입니다.
                        </p>

                    </div>
                    <script>
                        $(function(){
                            $('.answer').slideUp()
                
                            $('#l-list').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script>

                    <hr>

                    <!-- <h3>제목 : </h3>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <br> <br> <br>
                    <h4>문의 처리 상황 : </h4><br>

                    <button id="l-list">답변 보기</button>
                    <div class="answer">
                        <br>
                        <p>
                            문의하신 문의의 답변입니다.
                        </p>

                    </div>
                    <script>
                        $(function(){
                            $('.answer').slideUp()
                
                            $('#l-list').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script> -->

                    


                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>