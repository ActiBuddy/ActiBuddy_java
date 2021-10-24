<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../../resources/css/mateFind_writing.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>메이트 글 작성</title>
  </head>
  <body>
    <!-- 네비게이션바 -->
      <jsp:include page="../common/menubar.jsp"/>
      
     <!-- 주요 html -->
    <div class="around">
        <!-- 액티비티 이미지 -->
        <div class="activity">
            <img src="../../resources/image/faq_main.jpeg" />
        </div>
        <!-- 제목 부분 -->
        <div class="title">
            <div class="first">
                <img src="../../resources/image/heart2.png">
            </div>
            
            <div class="second">
                <select class="location" name="location">
                    <option value="none">지역</option>
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
                <p>같이 여수갈 사람 구해요 ! ! !</p>
            </div>
        </div>
      </div>

      <div class="writer">
        <div class="fix">작성자 :</div>
        <div class="name">parisbaguette</div>
      </div>

      <hr>

      <!-- <div class="choose">
        <div class="border">
          <div class="condition">인원현황</div>
          <div class="yellowback">
            <div class="imgborder1">
              <img src="../../resources/image/c_one.png" />
            </div>
            <div class="selectborder">
              <select class="people">
                <option value="2">1/2</option>
                <option value="3">1/3</option>
                <option value="4">1/4</option>
                <option value="5">1/5</option>
                <option value="6">1/6</option>
              </select>
            </div>
          </div>
        </div> -->
    
        
        
        <!-- 선택박스 부분 -->
        <div class="choose">
            <div class="border">
                <div class="condition">
                    인원현황
                </div>
               <div class="yellowback">
                   <div class="imgborder1">
                       <img src="../../resources/image/c_one.png">
                   </div>
                   <div class="selectborder">
                       <select class="people">
                          <option value="2">1/2</option>
                          <option value="3">1/3</option>
                          <option value="4">1/4</option>
                          <option value="5">1/5</option>
                          <option value="6">1/6</option>
                       </select>
                   </div>
               </div>
            </div>

        <div class="border">
          <div class="condition">신청기간</div>
          <div class="yellowback">
            <div class="imgborder1">
              <img src="../../resources/image/c_two.png" />
            </div>
            <div class="selectborder"><input type="date" /><br /></div>
          </div>
        </div>

        <div class="border">
          <div class="condition">성별</div>
          <div class="yellowback">
            <div class="imgborder2">
              <img src="../../resources/image/both.png" />
            </div>
            <div class="selectborder">
              <select class="gender">
                <option value="both">남녀무관</option>
                <option value="men">남자만</option>
                <option value="women">여자만</option>
              </select>
            </div>
          </div>
        </div>

        <div class="border">
          <div class="condition">희망연령</div>
          <div class="yellowback">
            <div class="imgborder2">
              <img src="../../resources/image/c_four.png" />
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
          <textarea name="text" class="write_text" placeholder="글을 입력해주세요."></textarea>
       </div>
       <!-- 버튼 부분 -->
       <div class="btnborder">
          <button type="submit" class="btnok"><a href="#">등록</a></button>
          <button class="btnno"><a href="#">취소</a></button>
       </div>
</form>
      <div class="mate5"></div>

      <!-- 찐짜div-->
    </div>

   <jsp:include page="../common/footer.jsp"/>
  </body>
</html>