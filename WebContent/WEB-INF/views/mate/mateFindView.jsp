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

    <title>${ title }</title>
  </head>
  <body>
    
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
                조회 52
            </div>
            <div class="writer_date">
                ${ date } ・ 
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
          <button class="btngo"><a href="#">신청하기</a></button>
          <div class="report"><img src="${ pageContext.servletContext.contextPath }/resources/image/warning2.png"></div>
       </div>


        </div>

       <hr>

         <!-- 댓글 작성 -->
        <form action="/acti/mate/comment" method="post">
       <div class="commentborder">
         <div class="comtext1">댓글 : </div>
         <div class="comtext2"><textarea name="text" placeholder="댓글을 작성해주세요"></textarea></div>
         <div class="comtext3"><input type="submit" class="c3" value="등록"></div>
         <input type="hidden" name="userId" value="${ sessionScope.loginMember.userId }">
       </div>
	   </form>
       <hr>

        <!-- 댓글 내용 -->
       <div class="comment">
          <div class="com1_border">
              <div class="com_writer1">작성자 : </div>
              <div class="com_writer2">sangho</div>
              <div class="com_writer3"><img src="${ pageContext.servletContext.contextPath }/resources/image/wraning.png"/></div>

              <div class="com_writer4">
                  <div class="com_writer5">저도 차끌고가도되나요?</div>
                  <div class="com_writer6">
                      <div class="re">답글달기</div>
                      <div class="date">2021/10/15 15:40</div>
                  </div>
              </div>
          </div>
          <div class="com2_iborder">
              <img src="${ pageContext.servletContext.contextPath }/resources/image/comment_arrow.png"/>    
          </div>
          <div class="com2_border">
              <div class="com_writer1">작성자 : </div>
              <div class="com_writer2">parisbaguette</div>
              <div class="com2_writer3"><img src="${ pageContext.servletContext.contextPath }/resources/image/wraning.png"/></div>
              <div class="com_writer4">
                <div class="com_writer5">네^^ 게하 주차장이 넓더라구요~</div>
                <div class="com_writer6">
                    <div class="re">답글달기</div>
                    <div class="date">2021/10/15 16:10</div>
                </div>
            </div>
       </div>
    <!-- 찐짜div-->
    </div>
    
    <hr>

    <div class="blank">

    </div>

   <jsp:include page="../common/footer.jsp"/>
    </body>
  </html>
