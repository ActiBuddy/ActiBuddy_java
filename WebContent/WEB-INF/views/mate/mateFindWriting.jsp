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
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mateFind_writing.css">
    <!--  데이트피커 -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<script>
      /* 조건 알럿 */

        function validate(){
       
        	 if($('select[name=location]').val() == 'none') {
                 alert('지역을 입력해주세요.');    
                 return false;
               } else {
                 if($('input[class="write_title"]').val() == ''){
                 alert('제목을 선택해주세요.');
                 return false;
                 } else {
                   if($('input[name=rgdate]').val() == '') {
                     alert('날짜를 선택해주세요.');
                     return false;
                   } else {
                     if($('textarea[class=write_text]').val() == '') {
                       alert('내용을 입력해주세요.');
                       return false;
                     } else {
                    	 return true;
                     }
                   }
                 }
               }
        }

    </script>
	
    <title>메이트 글 작성</title>
  </head>
  <body>
	<!-- 네비게이션바 -->
    <jsp:include page="../common/menubar.jsp"/>
    
     <!-- 주요 html  ${ pageContext.servletContext.contextPath } --> 
    <div class="around">
   	<form id="frm" action="${ pageContext.servletContext.contextPath }/mate/find/regist" method="post" onsubmit="return validate();">
        <!-- 액티비티 이미지 -->
        <div class="activity">
            <input type="label" class="showbtn" id="showbtn" value="액티비티 선택하기">
            <div class="background">
              <div class="window">
                <div class="popup">
                  <img class="popimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch_acti.png">
                  <div class="aback">
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch1.png">
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch2.png">
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch3.png">
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch4.png">
                    <div class="chborder">
                      <input type="checkbox" name="acti" value="ch1" onclick='checkOnlyOne(this)'>
                      <input type="checkbox" name="acti" value="ch2" onclick='checkOnlyOne(this)'>
                      <input type="checkbox" name="acti" value="ch3" onclick='checkOnlyOne(this)'>
                      <input type="checkbox" name="acti" value="ch4" onclick='checkOnlyOne(this)'>
                    </div>
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch5.png">
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch6.png">
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch7.png">
                    <img class="abackimg" src="${ pageContext.servletContext.contextPath }/resources/image/ch8.png">
                    <div class="chborder">
                      <input type="checkbox" name="acti" value="ch5" onclick='checkOnlyOne(this)'>
                      <input type="checkbox" name="acti" value="ch6" onclick='checkOnlyOne(this)'>
                      <input type="checkbox" name="acti" value="ch7" onclick='checkOnlyOne(this)'>
                      <input type="checkbox" name="acti" value="ch8" onclick='checkOnlyOne(this)'>
                    </div>
                  </div>
                  <div class="abtn">
                  <label class="pbtn" id="apply"><img src="${ pageContext.servletContext.contextPath }/resources/image/submitbtn.png"></label>
                  <label class="pbtn" id="close"><img src="${ pageContext.servletContext.contextPath }/resources/image/canclebtn.png"></label>
                  </div>
                </div>
              </div>
            </div>

        </div>
        
        <!-- 제목 부분 -->
        <div class="title">
            <div class="first">
                <img src="${ pageContext.servletContext.contextPath }/resources/image/heart2.png">
            </div>
            <div class="second">
                <select class="location" name="location">
                    <option value="none">지역선택</option>
                    <option value="seoul">서울</option>
                    <option value="gyeonggi">경기</option>
                    <option value="gangwon">강원</option>
                    <option value="chungcheong">충청</option>
                    <option value="jeolla">전라</option>
                    <option value="gyeongsang">경상</option>
                    <option value="busan">부산</option>
                    <option value="jeju">제주</option>
                </select>
            </div>
            <div class="third">
                <input type="text" class="write_title" maxlength="25" placeholder="제목을 입력해주세요.">
            </div>
        </div>
      </div>

      <div class="writer">
        <div class="fix">작성자 :</div>
        <div class="name">
        	<input type="text" name="userId" value="${ sessionScope.loginMember.userId }" readonly>
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
                       <select class="people" name="people">
                          <option value="2">( 1 / 2 ) 명</option>
                          <option value="3">( 1 / 3 ) 명</option>
                          <option value="4">( 1 / 4 ) 명</option>
                          <option value="5">( 1 / 5 ) 명</option>
                          <option value="6">( 1 / 6 ) 명</option>
                       </select>
                   </div>
               </div>
            </div>

        <div class="border">
          <div class="condition">신청기간</div>
          <div class="yellowback">
            <div class="imgborder1">
              <img src="${ pageContext.servletContext.contextPath }/resources/image/c_two.png"/>
            </div>
            <div class="selectborder">
              <input type="date" name="rgdate">
            </div>
          </div>
        </div>

        <div class="border">
          <div class="condition">성별</div>
          <div class="yellowback">
            <div class="imgborder2">
              <img id="genimg" src="${ pageContext.servletContext.contextPath }/resources/image/both.png" />
            </div>
            <div class="selectborder">
              <select id="gender" class="gender">
                <option value="both">남녀무관</option>
                <option value="men">남성만</option>
                <option value="women">여성만</option>
              </select>
            </div>
          </div>
        </div>

        <div class="border">
          <div class="condition">희망연령</div>
          <div class="yellowback">
            <div class="imgborder2">
              <img src="${ pageContext.servletContext.contextPath }/resources/image/c_four.png" />
            </div>
            <div class="selectborder">
              <select class="gender">
                <option value="0">연령무관</option>
                <option value="23">20대~30대</option>
                <option value="34">30대~40대</option>
                <option value="45">40대~50대</option>
                <option value="45">50대~60대</option>
              </select>
            </div>
          </div>
        </div>
      </div>

      <hr>
       
        <!-- 텍스트 부분 -->
       <div class="text_box">
          <textarea class="write_text" placeholder="글을 입력해주세요."></textarea>
       </div>
       <!-- 버튼 부분 -->
       <div class="btnborder">
          <button type="submit" id="btnSave" class="btnok" >등록</button>
          <button class="btnno" onclick="location.href='#'" onclick="location.href='#'">취소</button>
       </div>
      <div class="mate5"></div>
      </form>
      
      <script>
      /* 버튼 스크립트 */
      function show () {
          document.querySelector(".background").className = "background show";
       }

      function close () { 
          document.querySelector(".background").className = "background";
       }

       // 버튼 클릭
       document.querySelector("#showbtn").addEventListener('click', show);
       // 적용, 취소 버튼
       document.querySelector("#apply").addEventListener('click', close);
       document.querySelector("#close").addEventListener('click', close);
    
       /* 체크박스 스크립트 */
       function checkOnlyOne(element) {
  
           const checkboxes 
              = document.getElementsByName("acti");
          
          checkboxes.forEach((cb) => {
            cb.checked = false;
          })
          
          element.checked = true;
        }
       
       /* 이미지 변경 스크립트 */
       $("#gender").change(function () {
           if($(this).val() == "both") {
             $("#genimg").attr("src","${ pageContext.servletContext.contextPath }/resources/image/both.png");
           } else if ($(this).val() == "men") {
             $("#genimg").attr("src","${ pageContext.servletContext.contextPath }/resources/image/men.png");
           } else if ($(this).val() == "women") {
             $("#genimg").attr("src","${ pageContext.servletContext.contextPath }/resources/image/women.png");
           }
         });

    </script>
      <!-- 찐짜div-->      
    </div>

   <jsp:include page="../common/footer.jsp"/>
  </body>
</html>