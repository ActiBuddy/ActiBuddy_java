<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mateReview_writing.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>메이트 후기글 작성</title>
    
     <script>
        /* 조건 알럿 */
        $(function() {
          $('.btnok').click(function() {
            if($('input[class="write_title"]').val() == ''){
              alert('제목을 입력해주세요.');
            } else {
	            if($('textarea[name=con]').val() == '') {
	              alert('내용을 입력해주세요.');
	            }
            }
          });
        });
  
      </script>
  </head>
  <body>
      <!-- 네비게이션바 -->
      <jsp:include page="../common/menubar.jsp"/>

	<form id="postReview" action="${ pageContext.servletContext.contextPath }/mate/review/regist" method="post" enctype="multipart/form-data">
    <!-- 주요 html -->
    <div class="around">
        <!-- 로고 이미지 -->
        <div class="mate_logo">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/matereview.png">
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
                <input type="text" name="title" class="write_title" maxlength="25" placeholder="제목을 입력해주세요." required>
            </div>
        </div>
            
        
        <div class="detail">
            <div class="writer">
                작성자 : 
            </div>
            <div class="name">
                <input type="text" name="userId" value="${ sessionScope.loginMember.userName }" readonly>
            </div>
        </div>

        <hr>
        <!-- 텍스트 부분 -->
       <div class="text_box">
           <textarea name="con" placeholder="글을 입력해주세요." style="resize:none;" required></textarea>
       </div>

       <hr>

       <!-- 첨부 부분 -->
       <div class="bottom_border">
           <div class="img_border">
               <div class="file">첫번째 이미지 : <input accept="image/*" type="file" name="img1" value="file1" required></div>
               <div class="file">두번째 이미지 : <input accept="image/*" type="file" name="img2" value="file2"></div>
               <div class="file">세번째 이미지 : <input accept="image/*" type="file" name="img3" value="file3"></div>
               <div class="condition">첫번째 이미지가 썸네일 이미지로 등록됩니다.</div>
           </div>
       </div>

        <hr>

       <!-- 버튼 부분 -->
        <div class="btnborder">
            <button type="submit" class="btnok">등록</button>
            <button type="reset" class="btnno">취소</button>
         </div>
       </div>

    <!-- 찐짜div-->
    </div>
	</form>

   <jsp:include page="../common/footer.jsp"/>
    </body>
  </html>
