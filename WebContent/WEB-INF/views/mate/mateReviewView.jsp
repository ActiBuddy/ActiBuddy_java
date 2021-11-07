<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../../resources/css/mateReview_view.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>${ title }</title>
    
  </head>
  <body>
      <!-- 네비게이션바 -->
      <jsp:include page="../common/menubar.jsp"/>

	<!-- <form method="get" id="viewReview"> -->
     <!-- 주요 html -->
    <div class="around">
         <!-- 로고 이미지 -->
        <div class="mate_logo">
            <a href="#"><img src="${ pageContext.servletContext.contextPath }/resources/image/matereview.png"></a>
        </div>

        <!-- 제목 부분 -->
        <div class="title">
            <div class="first">
                <img src="${ pageContext.servletContext.contextPath }/resources/image/heart2.png">
            </div>
            <div class="second">
               제목
            </div>
            <div class="third">
                <p>${ title }</p>
            </div>
        </div>
        
        <div class="detail">
            <div class="writer">
                작성자 : 
            </div>
            <div class="name">
                ${ userId }
            </div>
            <div class="view">
                  ${ views } ・ 추천 ${ recommend }
            </div>
            <div class="writer_date">
                ${ date } &nbsp;&nbsp; 조회
            </div>
        </div>
        
        <hr>
         <!-- 이미지 슬라이드 -->
        <div class="image_view">

            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <c:if test="${ !empty img2 }">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  </c:if>
                  <c:if test="${ !empty img3 }">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  </c:if>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/review/${ img1 }" class="d-block w-100" alt="...">
                  </div>
                  <c:if test="${ !empty img2 }">
                  <div class="carousel-item">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/review/${ img2 }" class="d-block w-100" alt="...">
                  </div>
                  </c:if>
                  <c:if test="${ !empty img3 }">
                  <div class="carousel-item">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/review/${ img3 }" class="d-block w-100" alt="...">
                  </div>
                  </c:if>
                </div>
                <c:if test="${ !empty img2 || img3 }">
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
                </c:if>
              </div>

        </div>

        <hr>

        <!-- 텍스트 부분 -->
       <div class="text_box">
           <div>
             <pre>${ content }</pre>
           </div>
       </div>
     	
 
       <!-- 게시글 수정/삭제 버튼 -->
       <c:set var="userId" value="${ userId }"/>
       <c:if test="${ sessionScope.loginMember.userName eq userId}">
	   <div class="btnborder">
          <button id="btnok" class="btnok" onclick="location.href='${ pageContext.servletContext.contextPath }/mate/review/update?num=${ num }'">수정</button>
          <button id="btnno" class="btnno">삭제</button>
       </div>
	   </c:if>
	   
	   
	   <script>
	   	  $(function (){
	   		 $('#btnno').on('click',function(e){
	   			
	   			 let reviewNum = '${ num }';
	   			 
	   			 $.ajax({
	   				 url:'${ pageContext.servletContext.contextPath }/mate/review/delete',
	   				 type:'post',
	   				 data:{ num : reviewNum },
	   				 success:function(result){
	   					 
	   					 if(result > 0) {
		   					 alert("\'" + "${ title }" + "\'가 삭제되었습니다.");
	   					 } else {
	   						 alert("후기 삭제에 실패하였습니다.");
	   					 }
	   				 },
	   				 error:function(){
	   					 alert("error");
	   				 }
	   				
	   			 });
	   		 });
	   	  });
	   </script>
	   
	   <!-- 게시글 추천 버튼 -->
	   <c:if test="${ sessionScope.loginMember.userName ne userId}">
	   <div class="recborder">
           <button id="recbtn" class="recbtn">추천하기</button>
       </div>
       
      <script>
      	$(function() {
      	
      		
      		$('#recbtn').one('click', function(e){
      			
      			let reviewNum = '${ num }';
      			let reviewRec = '${ recommend }';
      			
      			
      			user = '${ sessionScope.loginMember.userId }';
      			
      			if(!user){
      				alert("로그인 후 추천해주세요.");
      			} else {
		      			$.ajax({
		      				url:'${ pageContext.servletContext.contextPath }/mate/review/recommend',
		      				type:'post',
		      				data:{ num : reviewNum, recommend : reviewRec },
		      				success:function(result){
		      					
		      					if(result > 0) {
		      						alert("추천되었습니다.");
		      					} else {
		      						alert("후기 추천 실패!");
		      					}
		      				},
		      				error:function(){
		      					alert("error");
		      				}
		      			});
	         		}	
		      	});
		     });
      			
      </script>
       
	
        <!-- 신고 부분 -->
       <div class="btnborder2">
        <div class="report">
        <button id="repbtn" class="repbtn">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/warning2.png">
        </button>
        </div>
     	</div>

	<script>
	
		$(function() {
			$('#repbtn').one('click', function(e) {
				
				let reviewNum = '${ num }'; // 오류 체크1 : script안에서는 특수 기호가 들어가면 문자열로 인식을 못한다!
											// 오류 체크2 : 주석에도 특수기호 사용하면 안된다.
				console.log(reviewNum);

				user = '${ sessionScope.loginMember.userId }';
				
				if(!user) {
					alert("로그인 먼저 해주세요.");
				} else {
					
					$.ajax({
						url:'${ pageContext.servletContext.contextPath }/mate/review/report',
						type:'post',
					    data:{ num : reviewNum
					    },
					    success:function(result){
					    	
					    	if(result > 0){
					    		alert("\'" + "${ title }" + "\'  글의 신고가 접수되었습니다."); // 오류 체크3: 알럿에서도 마찬가지이다.
					    		
					    	} else {
					    		alert("후기 신고 접수에 실패했습니다.");
					    	}
					    	e.preventDefault();
					    },
					    error:function(){
					           alert("error");
					    }
					    
					 });
				}
			});
		});
	
	</script>
	</c:if>
     </div>
    
    <!-- 찐짜div-->
    </div>

    <hr>

    <div class="blank">

    </div>

    <!-- 스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

   <jsp:include page="../common/footer.jsp"/>
    </body>
  </html>
    