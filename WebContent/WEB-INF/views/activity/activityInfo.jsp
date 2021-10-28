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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <link href="${ pageContext.servletContext.contextPath }/resources/css/activity_info.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!--  데이트피커 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--  지도 API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0ad37ecda7af5b08b1d5e0d5ad79b693"></script>
<!--  라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0ad37ecda7af5b08b1d5e0d5ad79b693&libraries=LIBRARY"></script>
<!--  라이브러리 - 장소검색, 주소-좌표변환 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0ad37ecda7af5b08b1d5e0d5ad79b693&libraries=services,clusterer,drawing"></script>

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
<a href="#review-all"> 
  <h3 id="reviewnum"> (이용후기 ${ activity.count }건)</h3>
</a>
</div>

<br>
<hr>
<br><br>

<div class=activity-2>
<!-- 조건 -->
  <c:forEach var="size" begin="0" end="${ fn:length(activity.conditionList)-1 }">
  <h3 id="condition${ size + 1 }" > ${ activity.conditionList[size].conIcon }
  ${ activity.conditionList[size].conName }</h3>
  <c:if test="${ size == 1}">
  <br><br><br>
  </c:if>
  </c:forEach> 
</div>

<br> <br> 
<hr>
<br>

<div class="activity-3">
<!-- 설명 -->

<ul class="explan">
   ${ activity.activityList[0].tip }
</ul>


</div>

<hr>

<div class="option">
<!-- 옵션 선택-->
<strong><h3 id="option"> 날짜 및 패키지 옵션 선택</h3></strong>

<div class="option1">
  <br>
<form>
  <h4 id="date"> 액티비티 참여 일자 선택</h4> <br>
  <input type="text" id="datepicker" name="date" placeholder="날짜를 입력해주세요" readonly="readonly">
  <script>
  
  $(function(){
	  $("#datepicker").datepicker({ 
	    minDate: "0", 
	    maxDate: "${ activity.activityList[0].endDate }",
	    dateFormat : "yy-mm-dd"
	  });
	});

	$(function() {
	   $( "#datepicker" ).datepicker(); 
	  });

	$(document).ready(function(){ 
	  $.datepicker.setDefaults({ 
	    changeMonth: true,
	    changeYear: true, 
	    nextText: '다음 달',
	    prevText: '이전 달', 
	    yearRange: 'c-50:c+20', 
	    showButtonPanel: true, 
	    currentText: '오늘 날짜', 
	    closeText: '닫기', 
	    showMonthAfterYear: true,
	    dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	   }); 
	  });

	  $.datepicker._gotoToday = function(id) {
	    $(id).datepicker('setDate', new Date()).datepicker('hide').blur();
	};

  </script>
  
  
  <h4 id="select">옵션 선택</h4><br>
  <div class="btn-group-vertical" role="group" aria-label="Basic radio toggle button group">
  
    <c:forEach var="size" begin="0" end="${ fn:length(activity.optionList) -1 }" varStatus="st">
    <input type="radio" class="btn-check" name="btnradio" id="btnradio${ size + 1 }" autocomplete="off">
    <label class="btn btn-radio-option" for="btnradio${ size + 1 }">${ activity.optionList[size].optionName }</label> 
    <input type="hidden" id="hd1" value="${ activity.optionList[size].price }"/>
    <br>
    
    <script>
  
    $('.btn-check').change(changePersonbar)
    function changePersonbar(e) {
    	checkprice = e.target.nextElementSibling.nextElementSibling.value;
    	if($(`#btnradio${size + 1}`).prop("checked")) {
    		$('#price').html('₩ ' + ${ activity.optionList[size].price });
    		
    	};
    };
    
    </script>

    </c:forEach> 
    
  </div>
  
  <br><br><br><br>
  
  <h4 id="person"> 인원
    <input class="person-bar" type="number" name="" id="" max="10" min="0" value="1" step="1">
  </h4>
</form>
  
  <br> <br>

  <h4 id="price"> ₩
 <script>
      $('.person-bar').change(pricePrint);
    function pricePrint() {
      let person = $('.person-bar').val();
      $('#price').html('₩ ' + (person * checkprice));
    } ; 
    
  </script>
  </h4>



  <h5 id="confirm"> 계속 진행하려면 옵션 선택을 완료해주세요</h5>
  

  <br> <br>

    <input type="submit" class="btn btn-pay-select" value="장바구니"> 
</div>

</div>

<hr>

<div class="activity-4">
  <!-- 위치 api-->
  <strong><h3 id="location"> 위치</h3></strong>
  <div id="map"></div>
  <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new kakao.maps.LatLng(37.511146193443025, 127.09816401777348), // 지도의 중심좌표
              level: 4, // 지도의 확대 레벨
              mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
          }; 

     // 지도를 생성한다 
     var map = new kakao.maps.Map(mapContainer, mapOption); 

     // 지도 타입 변경 컨트롤을 생성한다  
     var mapTypeControl = new kakao.maps.MapTypeControl();
 
     // 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
     map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

     // 지도에 확대 축소 컨트롤을 생성한다
     var zoomControl = new kakao.maps.ZoomControl();

     // 지도의 우측에 확대 축소 컨트롤을 추가한다
     map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

     //지도에 마커를 생성하고 표시한다
     var marker = new kakao.maps.Marker({
     position: new kakao.maps.LatLng(37.511146193443025, 127.09816401777348), // 마커의 좌표
     map: map // 마커를 표시할 지도 객체
     }); 


<!-- 정적 맵, 사용시 맵 아이디와 CSS 바꾼 뒤 적용시킬 것 -->
//이미지 지도에서 마커가 표시될 위치입니다 
/* var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

// 이미지 지도에 표시할 마커입니다
// 이미지 지도에 표시할 마커는 Object 형태입니다
var marker = {
    position: markerPosition
};

var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
    staticMapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 이미지 지도의 중심좌표
        level: 3, // 이미지 지도의 확대 레벨
        marker: marker // 이미지 지도에 표시할 마커 
    };    

// 이미지 지도를 생성합니다
var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption); */
</script>
</div>

<hr>

<div class="activity-5">	
  <!-- 이용 후기 -->
  <strong><h3 id="reveiw">이용 후기</h3></strong> <br>
  <h2 id="starscore2"> ${ activity.avgStar } </h2>
  <div class="stars">

   <c:set var="totalStar" value="<svg xmlns='http://www.w3.org/2000/svg' width='50' height='50' fill='currentColor' class='bi bi-star-fill' viewBox='0 0 16 16'>
    <path d='M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z'></path>
  </svg>" scope="page" />
  
  <c:choose>
      <c:when test="${ activity.avgStar <= 1.9 }">
     <c:out value="${ totalStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ activity.avgStar <= 2.9 }">
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ activity.avgStar <= 3.9 }">
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ activity.avgStar <= 4.9 }">
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ activity.avgStar <= 5 }">
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
     <c:out value="${ totalStar }" escapeXml="false"/>
  </c:when>
 </c:choose> 
  
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
  <c:set var="userStar" value="<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15' fill='currentColor' class='bi bi-star-user1' viewBox='0 0 16 16'>
    <path d='M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z'></path>
  </svg>" scope="page" />
  
  <c:choose>
      <c:when test="${ reviewList.reviewStar <= 1.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 2.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 3.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 4.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 5 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
 </c:choose> 

<c:choose>
      <c:when test="${ reviewList.reviewStar <= 1.9 }">
     <h5 id="review-auto"> 매우 불만족 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 2.9 }">
     <h5 id="review-auto"> 불만족 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 3.9 }">
     <h5 id="review-auto"> 보통 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 4.9 }">
     <h5 id="review-auto"> 만족 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList.reviewStar <= 5 }">
     <h5 id="review-auto"> 매우 만족 </h5> <br><br>
  </c:when>
 </c:choose> 


  <h6 id="goods-detail"> ${ reviewList.chooseOption } </h6>

  <h5 id="review-date"> ${ reviewList.writeDate } </h5> <br><br>

<div class="review-detail">
<p id="review-p"> ${ reviewList.content }</p>
<img src= ${ reviewList.image } alt="..." class="review-img">
</div>
</div>

<br>

<button id="suggestion">추천</button>
<h6 id="sugCount">${ reviewList.recommend }명이 추천한 후기입니다</h6>

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
 
 <c:forEach var="size" begin="0" end="${ fn:length(recActivity) -1 }">
 <div class="card${ size + 1 }" style="width: 18rem;">
  <img src=${ recActivity[size].image } class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">${ recActivity[size].name }</h5>
    <p class="card-text">${ recActivity[size].price }</p>
    <a href="/acti/activity/information?actiName=${ recActivity[size].name }" class="btn btn-primary">보러가기</a>
  </div>
</div>
 
 </c:forEach>
</div>

</div>

</main>
 <!-- 하단 footer-->
   <jsp:include page="../common/footer.jsp"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>