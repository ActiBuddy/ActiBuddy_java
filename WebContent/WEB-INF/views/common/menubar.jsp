<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ACTIBUDDY</title>
	<script>
	      $(function(){
	         $("#acti_1").on({
	             mouseover: function(){
	                 $('#acti_detail1').css('display', 'block');
	                 $('#acti_detail2').css('display', 'none');
	             },
	             mouseleave: function(){
	                 $('#acti_detail1').css('display','none');
	             }
	         });
	      });
	      $(function(){
	          $("#acti_detail1").on({
	              mouseover: function(){
	                  $('#acti_detail1').css('display', 'block');
	              },
	              mouseleave: function(){
	                  $('#acti_detail1').css('display','none');
	              }
	          });
	      });
	          
	
	      $(function(){
	          $("#acti_2").on({
	              mouseover: function(){
	                  $('#acti_detail2').css('display', 'block');
	                  $('#acti_detail1').css('display', 'none');
	              },
	              mouseleave: function(){
	                  $('#acti_detail2').css('display','none');
	              }
	          });
	      });
	
	      $(function(){
	          $("#acti_detail2").on({
	              mouseover: function(){
	                  $('#acti_detail2').css('display', 'block');
	              },
	              mouseleave: function(){
	                  $('#acti_detail2').css('display','none');
	              }
	          })
	      });
	      
	      $(function(){
	    	  $(".idcheck").click(function(){
	    		  alert('${ sessionScope.loginMember.userId }'); 
	    		  });
	    	  });
	      
	</script>
</head>
<body>

	<div class="activity_main">
		<div class="navbar_menu">
			<form action="/acti/search/activity" method="get">
			<span> 
			<a href="${ pageContext.servletContext.contextPath }"><img src="${ pageContext.servletContext.contextPath }/resources/image/actibuddylogo.png" class="nav_logo"></a>
			</span> 
			<span id="acti_1">
			<a href="${ pageContext.servletContext.contextPath }/activity/main">액티비티</a>
			</span>
			<span id="acti_2">
			<a href="../mate/mateFindWriting.html">메이팅</a>
			<div id="acti_detail2">
            <a href="#">메이트 매칭</a>
            <a href="${ pageContext.servletContext.contextPath }/mate/review">메이트 후기</a>
            </div>
			</span>
			<span>
			<input type="text" placeholder="Search" name="searchValue" id="searchBar">
			</span>
			<span>
			<c:if test="${ sessionScope.loginMember.memType eq 'M'}">		
				<button type="submit" class="search-btn">Submit</button>
			<a href="${ pageContext.servletContext.contextPath }/manager/main">매니저 메뉴</a>		
			</c:if>
			</span>
			</form>
		</div>
	
	<!—  로그인 안되었을 때 —>
	<c:if test="${ empty sessionScope.loginMember }">
		<div class="navbar_link">
			<span> <a href="${ pageContext.servletContext.contextPath }/faq">FAQ</a>
			</span> <span> <a href="${ pageContext.servletContext.contextPath }/member/regist">회원가입</a>
			</span> <span>
				<button type="button" class="login_btn" onclick="location.href='${ pageContext.servletContext.contextPath }/member/login'">로그인</button>
			</span>
		</div>
	</c:if>
	
	<!—  로그인 되었을 때 —>
		<c:if test="${ !empty sessionScope.loginMember }">
			<div class="navbar_link2">
				<div>* <c:out value="${ sessionScope.loginMember.userName }"/>님의 방문을 환영합니다 *</div>
				<span> <a href="${ pageContext.servletContext.contextPath }/faq">FAQ</a></span>
				<span>
				<a href="${ pageContext.servletContext.contextPath }/mypage/main" style="color:green; font-weight: bold;">마이페이지</a>
				</span>
				<span>
				<button type="button" class="logout_btn" onclick="location.href='${ pageContext.servletContext.contextPath }/member/logout'">로그아웃</button>
				</span>
			</div>
		</c:if>
	</div>

    
  </body>
</html>