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
    	
    	 		<jsp:include page="../common/mypagesidebar.jsp"/>
        
        <div class="r-center-all">

            <div class="r-center-1">
                <h2>메이트 평가 작성  </h2>
                <hr>
                
                <form id="writeScore" action="${ pageContext.servletContext.contextPath }/mypage/mate/score/insert" method="post">
                
                <h3>제목 : </h3><textarea id="title" name="title" placeholder="제목를 작성해주세요"></textarea>
                
                <br><br>
                <h5>참가한 메이팅 : ${ title } </h5>
                <h5> 평가할 메이트 : ${ mateId } </h5>
                <hr>
                <h4>별점을 매겨주세요</h4>
					
					<fieldset name="myform" id="myform">
				        
				        <label for="rate1">⭐</label><input type="radio" name="rating" value="1" id="rate1">
				        <label for="rate2">⭐</label><input type="radio" name="rating" value="2" id="rate2">
				        <label for="rate3">⭐</label><input type="radio" name="rating" value="3" id="rate3">
				        <label for="rate4">⭐</label><input type="radio" name="rating" value="4" id="rate4">
				        <label for="rate5">⭐</label><input type="radio" name="rating" value="5" id="rate5" checked>
				    </fieldset>
				
		  
                <hr>
                <h6>후기 내용</h6>
                <hr><br>
                <input type="checkbox" name='checkScore' value='저와 딱 맞는 메이트였어요!' onclick='checkOnlyOne(this)' id="b">
                    <label for="b">저와 딱 맞는 메이트였어요!</label><br>
                <input type="checkbox" name='checkScore' value='다음에도 같이 여행하고 싶어요.' onclick='checkOnlyOne(this)' id="c">
                    <label for="c">다음에도 같이 여행하고 싶어요.</label><br>
                <input type="checkbox" name='checkScore' value='메이트와 좋은 친구가 되었어요.' onclick='checkOnlyOne(this)' id="d">
                    <label for="d">메이트와 좋은 친구가 되었어요.</label><br>
                <input type="checkbox" name='checkScore' value='함께했던 여행이 아쉬웠어요.' onclick='checkOnlyOne(this)' id="e">
                    <label for="e">함께했던 여행이 아쉬웠어요.</label><br>
                <input type="checkbox" name='checkScore' value='아쉽지만 잘 맞지 않은 메이트였어요.' onclick='checkOnlyOne(this)' id="f">
                    <label for="f">아쉽지만 잘 맞지 않은 메이트였어요.</label><br>
                <br><hr>
                
                <script>
                	function checkOnlyOne(element) {
                	  
                	  const checkboxes 
                	      = document.getElementsByName("checkScore");
                	  
                	  checkboxes.forEach((cb) => {
                	    cb.checked = false;
                	  })
                	  
                	  element.checked = true;
                	}
                </script>

                <h6>기타</h6>
                <hr>

                <textarea name="elseWrite" placeholder="기타 평가를 작성해주세요"></textarea>
                <br><br><br>

                <input type="hidden" name="mateId" value="${ mateId }">
                <input type="submit" value="후기 작성하기">
                
                </form>

            </div>
           
        </div>

    </div>




<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>