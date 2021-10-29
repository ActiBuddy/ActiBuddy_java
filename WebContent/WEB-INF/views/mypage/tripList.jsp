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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>여행 내역</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage.css">

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
        <div class="side-all">
            <div class="side-1">
                <br><br><br>
                <img src="../resources/image/profile.png" width="100px" height="100px"/>
                
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
                <button type="button" class="forgreen" id="one">여행 내역</button>
                <button type="button" class="forgreen">다가오는 여행</button>

            </div>

            <div class="a-center-1">
                
                <div class="a-center-text">
				
		
        			<c:if test="${ !empty sessionScope.loginMember }">
		
        				<h4><c:out value="${ sessionScope.loginMember.userName }"/> 님의 여행</h4>
        			
					</c:if>

                 	<c:forEach var="size" begin="0" end="${fn:length(tripList.cartList)-1 }" >
                    <hr>
                    <button id="move" type="button" onclick="location.href='/acti/activity/information?actiName=${ tripList.activityInfo[size].name  }'">상세보기 ></button>
                    <h3>액티비티 : ${ tripList.activityInfo[size].name }</h3> 
                    
                    <br>
                    <h5>날짜 : ${ tripList.cartList[size].chooseDate } <br> 수량 : ${ tripList.cartList[size].totalPerson }</h5>
    
                    <br><br><br>
    
                    <h5 id="usestatus">이용상태 : </h5>
                    
 
	                    <button id="complete2" onclick='changeBtnName()' >후기 작성하기</button>

                    <hr>
    				
    				</c:forEach> 
    				
    				<script>
    	
                    	function changeBtnName()  {
	                      	/* if (complete2.innerText == "사용완료") {
	                      		
	                    	  const btnElement = document.getElementById('complete2');
	                      	  btnElement.innerText = '후기 작성하기';
	                      	  
	                      	}else if(complete2.innerText == "후기 작성하기"){
	 */
		                      		window.location.href = '/acti/mypage/trip/review/write';
	                     	
                    	}
                    </script>
    				
<!--                     <script>
                    
                    $("#complete2").click(function(){
                    	
                        $(".btnBox").append('<button type="button" id="btn2">후기 작성하기</button>');
                    });

                    $(document).on("click","#btn2",function(){

                    	window.location.href = '/acti/mypage/trip/review/write';
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