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
    <title>메이트 평가 작성</title>

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



    <div class="body-all" id="background">
    
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
        

        <div class="r-center-all">

            <div class="r-center-1">
                <h2>메이트 평가 작성  </h2>
                <hr>
                <form id="writeScore" action="../mypage/mate/score/write" method="post">
                
                <h3>제목 : </h3><textarea id="title" placeholder="제목를 작성해주세요"></textarea>
                
                <h5>참가한 메이팅 : </h5>
                <br><br>
                <h5> 평가할 메이트 : </h5>
                <hr>
                <h4>별점을 매겨주세요 ☆☆☆☆☆</h4>
                <hr>
                <h6>후기 내용</h6>
                <hr><br>
                <input type="checkbox" id="b">
                    <label for="b">저와 딱 맞는 메이트였어요!</label><br>
                <input type="checkbox" id="c">
                    <label for="c">다음에도 같이 여행하고 싶어요.</label><br>
                <input type="checkbox" id="d">
                    <label for="d">메이트와 좋은 친구가 되었어요.</label><br>
                <input type="checkbox" id="e">
                    <label for="e">함께했던 여행이 아쉬웠어요.</label><br>
                <input type="checkbox" id="f">
                    <label for="f">아쉽지만 잘 맞지 않은 메이트였어요.</label><br>
                <br><hr>

                <h6>기타</h6>
                <hr>

                <textarea placeholder="기타 평가를 작성해주세요"></textarea>
                <br><br><br>

                <button type="submit">후기 작성하기</button>
                
                </form>

            </div>
           
        </div>

    </div>




<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>