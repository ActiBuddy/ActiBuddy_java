<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <link href="${ pageContext.servletContext.contextPath }/resources/css/activity_info.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>



    <title>main</title>
  </head>
  <body>
    <jsp:include page="../common/menubar.jsp"/>

<!---------------------------------메인------------------------------------------------->

<main>

<div class="activity-1">
  
<!-- 이미지 슬라이드 -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src=${ activity.activityList[0].image } class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src=${ activity.activityList[0].image } class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src=${ activity.activityList[0].image } class="d-block w-100" alt="...">
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

<!-- 브래드 크럼 -->

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="../activity/activity.html">${ activity.locationList[0].name }</a></li>
    <li class="breadcrumb-item"><a href="#">${ activity.typeList[0].firstTypeName }</a></li>
    <li class="breadcrumb-item active"><a href="#">${ activity.typeList[0].secondTypeName }</a></li>
  </ol>
</nav>

<!-- 액티비티 이름 -->
<h2 id="activityname"> ${ activity.activityList[0].name } </h2>

<!-- 별점과 후기 건수-->
<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
</svg>
<h2 class="starscore">${ activity.avgStar } </h2>
<a href="..." target="_blank"> 
  <h3 id="reviewnum"> (이용후기 ${ activity.count }건)</h3>
</a>
</div>

<br>
<hr>
<br><br>

<div class=activity-2>
<!-- 조건 -->
  <c:forEach items="${ activity.conditionList }" var="conditionList">
  ${ conditionList.conIcon }
  <h3 id="condition1">${ conditionList.conName }</h3>
  </c:forEach>
  <!-- <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
    <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"/>
  </svg>
  <h3 id="condition1"> 48시간 전 취소 가능</h3>
 
    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
    <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
    <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
  </svg> 
  <h3 id="condition2">날짜 지정 티켓</h3>

  <br> <br> <br>

  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
    <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
    <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
    <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
  </svg>
  <h3 id="condition3">그룹당 2~3명 </h3>

    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
      <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
      <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
    </svg>
  <h3 id="condition4">일정 약 2시간 소요 </h3> -->

</div>

<br> <br> 
<hr>
<br>

<div class="activity-3">
<!-- 설명 -->

<ul class="explan">
   ${ activity.activityList[0].tip }
</ul>
</left>

</div>

<hr>

<div class="option">
<!-- 옵션 선택-->
<strong><h3 id="option"> 날짜 및 패키지 옵션 선택</h3></strong>

<div class="option1">
  <br>
<form>
  <h4 id="date"> 액티비티 참여 일자 선택</h4> <br>
  <input class="calender" type="date" min= max="2021-10-30">
  
  
  <h4 id="select">옵션 선택</h4><br>
  <div class="btn-group-vertical" role="group" aria-label="Basic radio toggle button group">
    <c:forEach items="${ activity.optionList }" var="optionList">
    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off">
    <label class="btn btn-radio-option1" for="btnradio1">${ optionList.optionName }</label>

    <br>
    </c:forEach>
  
 <!--    <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
    <label class="btn btn-radio-option2" for="btnradio2">써티파이드 다이빙</label> -->
  </div>

  <script>
  
  
    $('input:radio').change(changeOption);
    function changeOption() {
      if($('#btnradio1').prop("checked")) {
        $('.btn-radio-option1').css({
          'background-color' : "blue",
        });
      } else {
        $('.btn-radio-option1').css({
          'background-color' : "green",
        });
      }
      if($('#btnradio2').prop("checked")) {
        $('.btn-radio-option2').css({
          'background-color' : "blue",
        });
      } else {
        $('.btn-radio-option2').css({
          'background-color' : "green",
        });
      }
    }
  </script>

  <br><br><br><br>

  <h4 id="person"> 인원
    <input class="person-bar" type="number" name="" id="" max="10" min="0" value="1" step="1">
  </h4>
</form>
  
  <br> <br>

  <h4 id="price"> ₩ ${ activity.activityList[0].price }
  <script>
    $('.person-bar').change(pricePrint);
    function pricePrint() {
      let value = $('.person-bar').val();
      $('#price').html('₩ ' + value * ${ activity.activityList[0].price });
    }
  </script>
  </h4>



  <h5 id="confirm"> 계속 진행하려면 옵션 선택을 완료해주세요</h5>

  <br> <br>

  <div class="btn-group" type = "submit" role="group" aria-label="...">
    <label  class="btn btn-pay-select1">장바구니</label> 
   <a id="move-pay" href="../pay/pay.html"> 
    <label  class="btn btn-pay-select2">바로 예약</label> 
  </a>
  </div>
</div>

</div>

<hr>

<div class="activity-4">
  <!-- 위치 api-->
  <strong><h3 id="location"> 위치</h3></strong>
  <img class="map" src="../resources/image/Activity_info_map.png" alt="...">
</div>

<hr>

<div class="activity-5">	
  <!-- 이용 후기 -->
  <strong><h3 id="reveiw">이용 후기</h3></strong> <br>
  <h2 id="starscore2"> ${ activity.avgStar } </h2>
  <div class="stars">
  <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
</div>

  <h3 id="review-all">(이용후기 ${ activity.count }건)</h3>

  <br> <br> <br>

  <h5 id="sort"> 정렬 : 
  <select id="sort-select">
    <option value="추천순">추천 순</option>
    <option value="최신순">최신 순</option>
    <option value="별점높은순">별점 높은 순</option>
    <option value="별점낮은순">별점 낮은 순</option>
</select>
</h5>

<br><br>

<c:forEach items="${ activity.reviewList }" var="reviewList">

<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
</svg>
<h3 id="nickname"> ${ reviewList.writerId } </h3>

<div class="stars-user">
  <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-star-user1" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-star-user1" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-star-user1" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-star-user1" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>
  <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-star-user1" viewBox="0 0 16 16">
    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
  </svg>


  <h5 id="review-auto"> 매우 만족</h5> <br><br>

  <h6 id="goods-detail"> 후기 상품 상세 : 체험 다이빙 </h6>

  <h5 id="review-date"> ${ reviewList.writeDate } </h5> <br><br>

<div class="review-detail">
<p id="review-p"> ${ reviewList.content }</p>
<img src= ${ reviewList.image } alt="..." class="review-img">
</div>
</div>

<br>

<button id="suggestion">추천</button>

<button id="declaration">
  <img id="declaration-icon" src="../resources/image/activity_info_declaration.png" alt="">
  </button>

<br> <br>
<hr>
<br>

</c:forEach>


<br> <br>
<!-- 페이지 네이션 -->
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>


<hr>
<br>
<!--  새로운 JSP 만들어서 넘어갈 때 페이지 내에 있는 지역 이름을 받아서 넘어갈 수는 없을까? -->
<div class="activity-6">
 <!-- 추천 액티비티 -->
 <strong><h3 id="recomend">추천 액티비티</h3></strong> <br>

    <c:forEach items="${ recActivity }" var="rec">
 <div class="card1" style="width: 18rem;">
  <img src=${ rec.image } class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">${ rec.name }</h5>
    <p class="card-text">${ rec.price }</p>
    <a href="#" class="btn btn-primary">보러가기</a>
  </div>
</div>
</c:forEach>
<!-- <div class="card2" style="width: 18rem;">
  <img src="../resources/image/activity_info_recommend(2).png" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">울릉도 학포해변 학포다이버리조트 호핑투어 체험</h5>
    <p class="card-text">₩ 95,000</p>
    <a href="#" class="btn btn-primary">보러가기</a>
  </div>
</div>

<div class="card3" style="width: 18rem;">
  <img src="../resources/image/activity_info_recommend(3).png" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">울릉아일랜드 투어패스 (독도 전망 케이블카/예림원 등)</h5>
    <p class="card-text">₩ 7,900</p>
    <a href="#" class="btn btn-primary">보러가기</a>
  </div>
</div> -->
</div>


</div>

</main>
 <!-- 하단 footer-->
   <jsp:include page="../common/footer.jsp"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>