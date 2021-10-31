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

    <title>여행 후기 작성</title>
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
    
			<jsp:include page="../common/mypagesidebar.jsp"/>

        <div class="center-all">

            <div class="t-center-1">
                <div class="t-center-text">

                    <h5>이용 후기 작성</h5>
                    <hr>
                    <form action="${ pageContext.servletContext.contextPath }/mypage/trip/review/write" method="post" >
                    
                    <h2 id="titleH2">제목 : </h2><textarea id="title" placeholder="제목를 작성해주세요" name="title"></textarea>
                    
                    <c:forEach var="size" begin="0" end="${fn:length(tripList.activityInfo)-1 }" >
                    <hr><h3>후기 상품 :  ${ tripList.activityInfo[size].name }</h3>
                    <input type="hidden" name="hdActivityNum" value="${ tripList.cartList[size].actiNum }"  >
                    <br>
                    <h5>선택 날짜 : ${ tripList.cartList[size].chooseDate }  </h5>
                    <h5>선택한 옵션 : ${ tripList.cartList[size].chooseOption }</h5>
                    <h5>선택한 수량 : ${ tripList.cartList[size].totalPerson }</h5>
                    <input type="hidden" name="hdChooseDate" value="${ tripList.cartList[size].chooseDate }"  >
                    <input type="hidden" name="hdTotalPerson" value="${ tripList.cartList[size].totalPerson }"  >
                    <input type="hidden" name="hdChooseOption" value="${ tripList.cartList[size].chooseOption }"  >
                    </c:forEach>
                    
                    <hr>
                    <h3>액티비티는 어떠셨나요? 별점을 매겨주세요</h3>
    
    
					<fieldset name="myform" id="myform">
				        
				        <label for="rate1">⭐</label><input type="radio" name="rating" value="1" id="rate1">
				        <label for="rate2">⭐</label><input type="radio" name="rating" value="2" id="rate2">
				        <label for="rate3">⭐</label><input type="radio" name="rating" value="3" id="rate3">
				        <label for="rate4">⭐</label><input type="radio" name="rating" value="4" id="rate4">
				        <label for="rate5">⭐</label><input type="radio" name="rating" value="5" id="rate5">
				    
				    </fieldset>
    
                    <hr>
                    <h5>후기 내용</h5>
                    <hr>
                    <textarea cols ="30" rows="5" name="reviewCon" placeholder="후기 내용을 작성해주세요"></textarea>

                    <input type="file" id="image" accept="image/*" onchange="setThumbnail(event); value="imageFile" /> 
                    <div id="image_container"></div>

                    <script> 
                    
	                    function setThumbnail(event) { 
	                        for (var image of event.target.files) { 
	                            var reader = new FileReader(); 
	                            
	                            reader.onload = function(event) { 
	                                var img = document.createElement("img"); 
	                                img.setAttribute("src", event.target.result); 
	                                document.querySelector("div#image_container").appendChild(img); 
	                                }; 
	                                
	                                console.log(image);
	                                 reader.readAsDataURL(image);
	                        } 
	                    } 
               
                    </script>
                    



                    <!-- 후기 작성하기 버튼 누르면 UseYn -> Y로 변경 -->

                    <button class="t-center-btn">후기 작성하기</button>
                    
                    </form>

                </div>




    
            </div>
            
        </div>
    </div>


    
    



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>