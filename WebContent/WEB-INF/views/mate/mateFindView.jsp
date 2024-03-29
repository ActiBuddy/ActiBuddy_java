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

    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mateFind_view.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
	if(${ state == '신청마감'}){
	
	    function back(){
	
	         alert("신청마감된 게시글입니다");
	
	         history.go(-1);
	   	 }
	} 
    </script>
	    	
    <title>${ title }</title>
    
  </head>
  <body onload ="back()">
    
    
    
    <!-- 네비게이션바 -->
       <jsp:include page="../common/menubar.jsp"/>

     <!-- 주요 html -->
    <div class="around">

         <!-- 액티비티 이미지 -->
        <div class="activity">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/${ imgName }.png" />
        </div>
    
         <!-- 제목 부분 -->
        <div class="title">
            <div class="first">
                <img src="${ pageContext.servletContext.contextPath }/resources/image/heart2.png">
            </div>
            <div class="second">
                ${ location }
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
                조회 ${ view }
            </div>
            <div class="writer_date">
                ${ date } 
            </div>
        </div>
    
        <hr>

         <!-- 선택박스 부분 -->
        <div class="choose">
            <div class="border">
                <div class="condition">
                    인원현황
                </div>
               <div class="yellowback">
                   <div class="imgborder1">
                       <img src="${ pageContext.servletContext.contextPath }/resources/image/c_one.png">
                   </div>
                   <div class="selectborder">
                      ${ count } / ${ people }
                   </div>
               </div>
            </div>

            <div class="border">
              <div class="condition">
                  신청기간
              </div>
              <div class="yellowback">
                  <div class="imgborder1">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/c_two.png">
                  </div>
                  <div class="selectborder">
                    ~ ${ deadline }
                  </div>
              </div>
            </div>

            <div class="border">
              <div class="condition">
                성별
              </div>
              <div class="yellowback">
                  <div class="imgborder2">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/${ gender }.png">
                  </div>
                  <div class="selectborder">
                  <c:if test="${ gender eq 'B'}">
                   남녀무관
                   </c:if>
                   <c:if test="${ gender eq 'W'}">
                   여성만
                   </c:if>
                   <c:if test="${ gender eq 'M'}">
                   남성만
                   </c:if>
                  </div>
              </div>
            </div>

            <div class="border">
              <div class="condition">
                  희망연령
              </div>
              <div class="yellowback">
                  <div class="imgborder2">
                    <img src="${ pageContext.servletContext.contextPath }/resources/image/c_four.png">
                  </div>
                   <div class="selectborder">
                    <c:if test="${ age eq 0}">
                    	연령무관
                    </c:if>
                    <c:if test="${ age eq 23}">
                    	20대~30대
                    </c:if>
                    <c:if test="${ age eq 34}">
                    	30대~40대
                    </c:if>
                    <c:if test="${ age eq 45}">
                    	40대~50대
                    </c:if>
                    <c:if test="${ age eq 56}">
                    	50대~60대
                    </c:if>
                   </div>
              </div>
            </div>

        </div>

        <hr>

         <!-- 텍스트 부분 -->
       <div class="text_box">
           <div>
              ${ content }
           </div>
       </div>

        <!-- 버튼 부분 -->
       <div class="btnborder">
       		<c:set var="id" value="${ sessionScope.loginMember.userId }"/> 
       		<c:choose>
       		
       		<c:when test="${ userId eq id }">
       		<button id="delete" class="btndelete">삭제하기</button>
       		<button id="close" class="btnclose">마감하기</button>
       		</c:when>
       		
       		<c:when test="${ findYn eq null or id eq null}">
           <button id="abc" class="btngo">신청하기</button>
       		</c:when>
       		
       		<c:when test="${ fn:contains(findYn, 'L') }">
       		<button id="abc" class="btngo" disabled="disabled" style="background: gray; border-color : gray">신청중</button>
       		</c:when>
			
			<c:when test="${ fn:contains(findYn, 'Y') }">
			<button id="abc" class="btngo" disabled="disabled" style="background: skyblue; border-color : skyblue;" >참가확인 완료</button>
			</c:when>       
			
			<c:when test="${ fn:contains(findYn, 'X') }">
			<button id="abc" class="btngo" disabled="disabled" style="background: black; border-color: black" >신청불가</button>
			</c:when> 	
          </c:choose>
          <div class="report">
        <button id="repbtn" class="repbtn">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/warning2.png">
        </button>
        </div>
       </div>


        </div>

       <hr>

         <!-- 댓글 작성 -->
        <form id="frm" method="post">
       <div class="commentborder">
         <div class="comtext1">댓글 : </div>
         <div class="comtext2"><textarea name="text" placeholder="댓글을 작성해주세요"></textarea></div>
         <div class="comtext3"><input type="button" id="sub" class="c3" value="등록"></div>
         <input type="hidden" name="userId" value="${ sessionScope.loginMember.userId }">
         <input type="hidden" name="num" value="${ num }">
       </div>
	   </form>
       <hr>

		<script>
			$(function() {
				$('#sub').on('click', function () {
					if('${ sessionScope.loginMember.userId }' != null && '${ sessionScope.loginMember.userId }' != ''){
						$('#frm').attr("action","/acti/mate/comment").submit();
					} else {
						alert("액티버디 로그인 하신 후 이용해 주시기 바랍니다.");
					}
				})
			})
		</script>

        <!-- 댓글 내용 -->
        <c:if test="${ comment != null and !empty comment}">
       <div class="comment">
       	<c:forEach var="size" begin="0" end="${ fn:length(comment)-1 }">
          <div class="com1_border">
              <div class="com_writer1">작성자 : </div>
              <div class="com_writer2">${ comment[size].userId }</div>
              <div class="com_writer3">
              <button id="repbtn${ size + 1 }" class="repbtn" style="border: none;" name="val" value="${ com.num }">
              <img src="${ pageContext.servletContext.contextPath }/resources/image/wraning.png"/>
              </button>
              </div>
              <div class="com_writer4">
                  <div class="com_writer5">${ comment[size].comment }</div>
                  <div class="com_writer6">
                     <div class="date">
					<fmt:formatDate value="${ comment[size].date }" type="date" pattern="yyyy/MM/dd"/>
				    <fmt:formatDate value="${ comment[size].date }" type="time" pattern="(a) hh:mm:ss"/>
					</div>
                  </div>
              </div>
          </div>
          
          <script>
		$(function() {
			$('#repbtn${size + 1}').one('click', function(e) {
				let commentNum = '${ comment[size].num }' // 오류 체크1 : script안에서는 특수 기호가 들어가면 문자열로 인식을 못한다!
											// 오류 체크2 : 주석에도 특수기호 사용하면 안된다.
				console.log(commentNum);

				user = '${ sessionScope.loginMember.userId }';
				
				if(!user) {
					alert("액티버디 로그인 하신 후 이용해 주시기 바랍니다.");
				} else {
					
					$.ajax({
						url:'${ pageContext.servletContext.contextPath }/mate/find/report',
						type:'post',
					    data:{ comNum : commentNum
					    },
					    success:function(result){
					    	
					    	if(result > 0){
					    		alert("해당 댓글의 신고가 접수되었습니다."); // 오류 체크3: 알럿에서도 마찬가지이다.
					    		$('#repbtn${size + 1}').remove();
					    	} else {
					    		alert("댓글 신고 접수에 실패했습니다.");
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
          
          </c:forEach>
    <!-- 찐짜div-->
    	</div>
    <hr>
          </c:if>
    

    <div class="blank">

    </div>
    <script>
		$(function() {
			$('#repbtn').one('click', function(e) {
				
				let findNum = '${ num }'; // 오류 체크1 : script안에서는 특수 기호가 들어가면 문자열로 인식을 못한다!
											// 오류 체크2 : 주석에도 특수기호 사용하면 안된다.
				console.log(findNum);

				user = '${ sessionScope.loginMember.userId }';
				
				if(!user) {
					alert("액티버디 로그인 하신 후 이용해 주시기 바랍니다.");
				} else {
					
					$.ajax({
						url:'${ pageContext.servletContext.contextPath }/mate/find/report',
						type:'post',
					    data:{ num : findNum
					    },
					    success:function(result){
					    	
					    	if(result > 0){
					    		alert("\'" + "${ title }" + "\'  글의 신고가 접수되었습니다."); // 오류 체크3: 알럿에서도 마찬가지이다.
					    		
					    	} else {
					    		alert("게시글 신고 접수에 실패했습니다.");
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
	
	<script>
		$(function() {
			$('#abc').on('click', function(e) {
				
				user = '${ sessionScope.loginMember.userId }';
				
				if(!user) {
					alert("액티버디 로그인 하신 후 이용해 주시기 바랍니다.");
				} else {
					
					let returnValue = confirm('신청하시겠습니까??');
					
					if(returnValue){
					
					$.ajax({
						url:'${ pageContext.servletContext.contextPath }/find/apply',
						type:'post',
					    data:{ findNum : '${ num }', userId : '${ sessionScope.loginMember.userId }'
					    },
					    success:function(result){
					    	if(result > 0){
					    		alert("신청이 완료되었습니다."); // 오류 체크3: 알럿에서도 마찬가지이다.
					    		$('#abc').attr('disabled',true).css({'background':'gray', 'border-color' : 'gray' }).text('신청중');
					    	} 
					    	e.preventDefault();
					    },
					    error:function(){
					           alert("신청에 실패했습니다.");
					    }
					    
					 });
					
					} else {
						alert("취소되었습니다");
					}
				}
			});
		});
	</script>
	
	
	<script>
		if('${ success }' != null && '${success}' != ''){
			alert('댓글 등록에 성공하였습니다');
		}
	</script>
   <jsp:include page="../common/footer.jsp"/>
    </body>
  </html>
