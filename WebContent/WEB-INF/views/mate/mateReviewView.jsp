<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <link href="../../resources/css/mateReview_view.css" rel="stylesheet" />

    <title>메이트들과 첫 스쿠버다이빙~~</title>
  </head>
  <body>
      <!-- 네비게이션바 -->
      <jsp:include page="../common/menubar.jsp"/>

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
                <p><c:out value="${ reviewList.title }"/></p>
            </div>
        </div>
            
        
        <div class="detail">
            <div class="writer">
                작성자 : 
            </div>
            <div class="name">
                parisbaguette
            </div>
            <div class="view">
                조회 52
            </div>
            <div class="writer_date">
                2021.10.03  ・ 
            </div>
        </div>
    
        <hr>
         <!-- 이미지 슬라이드 -->
        <div class="image_view">

            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="../../resources/image/scuba_diving1.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="../../resources/image/busan.jpeg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="../../resources/image/seoul.jpeg" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>

        </div>

        <hr>

        <!-- 텍스트 부분 -->
       <div class="text_box">
           <div>
            메이트 분들과 재밌는 바다여행 했어요 !<br>
            처음이라 걱정했는데 메이트분들이 친절하게 도와주셔서 재밌게 놀다왔어요.<br>
            자유롭게 바다속을 다니고, 귀여운 물고기도 봤어요~<br>
            스트레스 완젼 풀렸는데 또 가고싶네요<br>
            다들 스쿠버 다이빙 하세요^^
           </div>
       </div>

        <!-- 신고 부분 -->
       <div class="btnborder">
        <div class="report"><img src="../../resources/image/report2.png"></div>
     </div>


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
    