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
                <input type="text" name="userId" value="${ sessionScope.loginMember.userId }" readonly>
            </div>
        </div>

        <hr>
        <!-- 텍스트 부분 -->
       <div class="text_box">
           <textarea name="con" placeholder="글을 입력해주세요." style="resize:none;" required></textarea>
       </div>

       <hr>

       <!-- 첨부 부분 -->
              <!-- 첨부 부분 -->
       <div class="bottom_border">
           <div class="img_border">
            <a>첫번째 이미지 : &nbsp;</a> 
               <div class="filebox">
                   <input type="file" accept="image/*" id="file" name="img1" value="file1" class="upload-hidden" required>
                   <input class="upload-name" value="선택된 파일 없음">
                   <label for="file">선택</label>
                </div>
            <a>두번째 이미지 : &nbsp;</a> 
                <div class="filebox">
                <input type="file" accept="image/*" id="file2" name="img1" value="file2" class="upload-hidden">
                <input class="upload-name2" value="선택된 파일 없음">
                <label for="file2">선택</label>
               </div>
            <a>세번째 이미지 : &nbsp;</a> 
               <div class="filebox">
                <input type="file" accept="image/*" id="file3" name="img1" value="file3" class="upload-hidden">
                <input class="upload-name3" value="선택된 파일 없음">
                <label for="file3">선택</label>
               </div>
               <div class="condition">첫번째 이미지가 썸네일 이미지로 등록됩니다.</div>
           </div>
       </div>

       <script>
            $("#file").on('change',function(){
                var fileName = $("#file").val();
                $(".upload-name").val(fileName);
            });

            $("#file2").on('change',function(){
                var fileName2 = $("#file2").val();
                $(".upload-name2").val(fileName2);
            });
            
            $("#file3").on('change',function(){
                var fileName3 = $("#file3").val();
                $(".upload-name3").val(fileName3);
            });

        //preview image
        var imgTarget = $('.filebox .upload-hidden');
        imgTarget.on('change', function(){
            var parent = $(this).parent();
            parent.children('.upload-display').remove(); 
            if(window.FileReader){
                //image 파일만
                if (!$(this)[0].files[0].type.match(/image\//)) return;
                var reader = new FileReader();
                reader.onload = function(e){ 
                    var src = e.target.result;
                    parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>'); } 
                    reader.readAsDataURL($(this)[0].files[0]);
                } else {
                    $(this)[0].select();
                    $(this)[0].blur();
                    var imgSrc = document.selection.createRange().text;
                    parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
                    var img = $(this).siblings('.upload-display').find('img');
                    img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")"; } });


		</script>

        <hr class="ff">

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
