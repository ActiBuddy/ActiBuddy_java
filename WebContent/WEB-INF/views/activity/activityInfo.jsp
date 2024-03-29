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

<c:if test="${ sort != null }">
<script>
     $(document).ready(function () {
	$('html, body').animate({
	scrollTop: $('#reveiw').offset().top
	}, 'slow');
	});  
</script>
</c:if>

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
    <c:if test="${ (not empty activity.activityList[0].image2) and (activity.activityList[0].image2 != '../resources/image/addActi/')}">
     <div class="carousel-item">
      <img src=${ activity.activityList[0].image2 } class="d-block w-100" alt="...">
    </div>
    </c:if>
    <c:if test="${ (not empty activity.activityList[0].image3) and (activity.activityList[0].image3 != '../resources/image/addActi/')}">
     <div class="carousel-item">
      <img src=${ activity.activityList[0].image3 } class="d-block w-100" alt="...">
    </div>
    </c:if>
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
    <li class="breadcrumb-item">${ activity.locationList[0].name }</li>
    <li class="breadcrumb-item">${ activity.typeList[0].firstTypeName }
    <li class="breadcrumb-item active">${ activity.typeList[0].secondTypeName }</li>
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
  <h3 id="reviewnum"> (이용후기 ${ selectCriteria.totalCount }건)</h3>
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
    <input type="radio" class="btn-check" name="btnradio" id="btnradio${ size + 1 }" autocomplete="off" value="${ activity.optionList[size].optionName }">
    <label class="btn btn-radio-option" for="btnradio${ size + 1 }">${ activity.optionList[size].optionName }</label> 
    <input type="hidden" id="hd1" name="price" value="${ activity.optionList[size].price }"/>
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
    <input class="person-bar" type="number" name="person" id="" max="10" min="0" value="1" step="1">
  </h4>

  
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

    <input type="submit" id="cart" class="btn btn-pay-select" value="장바구니"> 
    
    <script>
     $(function(){			
		$('#cart').on('click',function(e){
			
			let user = '${ sessionScope.loginMember.userId }';
			let date = $('#datepicker').val();
			let option = $('input[type=radio]:checked').val();
			
			 if(!user) {
		 	    	alert("로그인을 진행해주세요.")
		 	    } else if(!option) {
		 	    	alert("옵션을 선택해주세요.")
		 	    } else if(!date) {
		 	        alert("날짜를 선택해주세요.") 
		 	    }  else {
		 	    	
			let code = '${ activity.activityList[0].code }';
			let person = $('.person-bar').val();
			let totalPrice = person * checkprice;
			
			console.log("user : " + user);
			console.log("code : " + code);
			console.log("option : " + option);
			console.log("person : " + person);
			console.log("totalPrice : " + totalPrice);
			console.log("date : " + date);
		   
	 	   
			
			 $.ajax({
	            url:'${ pageContext.servletContext.contextPath }/cart/insert', //Controller에서 인식할 주소
	            type:'post',
	            data:{ userId : user
	            	,  actiNum : code 
	            	,  chooseOption : option 
	            	, totalPerson : person 
	            	, totalPrice : totalPrice 
	            	, ChooseDate : date 
	            	}
	            ,success:function(result){ //callback
	            	
					if(result > 0 ){
						alert("장바구니에 추가되었습니다.");
					} else {
						alert("장바구니 추가에 실패했습니다.");
					}
	            	e.preventDefault();
	            },
	            error:function(){
	                alert("error");
	            }
	        }); 
	 	    };
		});
	}); 
	
</script>
    
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
              center: new kakao.maps.LatLng(${ map[0] }, ${ map[1] }), // 지도의 중심좌표
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
     position: new kakao.maps.LatLng(${ map[0] }, ${ map[1] }), // 마커의 좌표
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

  <h3 id="review-all">(이용후기 ${ selectCriteria.totalCount }건)</h3>

  <br> <br> <br>
<form method="get" id="sortForm">
  <h5 id="sort"> 정렬 : 
  <select id="sort-select" name="sort">
    <option value="rec">추천 순</option>
    <option value="new">최신 순</option>
    <option value="high">별점 높은 순</option>
    <option value="row">별점 낮은 순</option>
</select>
<input type="hidden" name="actiName" value="${ activity.activityList[0].name }">
</h5>
</form>

<script>

$('#sort-select').on('change', function(){
	
	$('#sortForm').attr("action","/acti/activity/information").submit();

}); 

    $('#sort-select').val('${ sort }');

</script>


<br><br>

<c:choose>
      <c:when test="${ empty reviewList }">
      <h1 id="reviewNull"> 아직 작성된 후기가 없습니다. </h1>
  </c:when>
      <c:when test="${ not empty reviewList }">

<c:forEach var="size" begin="0" end="${ fn:length(reviewList) -1 }">

<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
</svg>
<h3 id="nickname"> ${ reviewList[size].writerId } </h3>

<div class="stars-user">
  <c:set var="userStar" value="<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15' fill='currentColor' class='bi bi-star-user1' viewBox='0 0 16 16'>
    <path d='M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z'></path>
  </svg>" scope="page" />
  
  <c:choose>
      <c:when test="${ reviewList[size].reviewStar <= 1.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 2.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 3.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 4.9 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 5 }">
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
     <c:out value="${ userStar }" escapeXml="false"/>
  </c:when>
 </c:choose> 

<c:choose>
      <c:when test="${ reviewList[size].reviewStar <= 1.9 }">
     <h5 id="review-auto"> 매우 불만족 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 2.9 }">
     <h5 id="review-auto"> 불만족 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 3.9 }">
     <h5 id="review-auto"> 보통 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 4.9 }">
     <h5 id="review-auto"> 만족 </h5> <br><br>
  </c:when>
  <c:when test="${ reviewList[size].reviewStar <= 5 }">
     <h5 id="review-auto"> 매우 만족 </h5> <br><br>
  </c:when>
 </c:choose> 


  <h6 id="goods-detail"> ${ reviewList[size].chooseOption } </h6>

  <h5 id="review-date"> ${ reviewList[size].writeDate } </h5> <br><br>

<div class="review-detail">
<p id="review-p"> ${ reviewList[size].content }</p>
<img src= ${ reviewList[size].image } alt="..." class="review-img">
</div>
</div>

<br>

<button class="suggestion" id="suggestion${ size + 1 }">추천</button>
<h6 class="sugCount" id="sugCount${ size + 1 }">${ reviewList[size].recommend }명이 추천한 후기입니다</h6>

 <script>
     $(function(){			
		$('#suggestion${ size + 1 }').one('click',function(e){
		   
			let user = '${ sessionScope.loginMember.userId }';
			
		    if(!user) {
		    	alert("로그인을 진행해주세요.")
		    } else {
			
			let reviewNum = '${ reviewList[size].num }';
			let reviewRec = ${ activity.reviewList[size].recommend };
			
			 $.ajax({
	            url:'${ pageContext.servletContext.contextPath }/review/recommend', //Controller에서 인식할 주소
	            type:'post',
	            data:{ num : reviewNum 
	            	,  recommend : reviewRec 
	            	},
	            success:function(result){ //callback
	            	
					if(result > 0 ){
						alert("후기 추천이 완료되었습니다.");
                        $('#sugCount${ size + 1 }').text('${ reviewList[size].recommend + 1 }명이 추천한 후기입니다');
					} else {
						alert("후기 추천에 실패했습니다.");
					}
	            	e.preventDefault();
	            },
	            error:function(){
	                alert("error");
	            }
	        }); 
		    };
		});
	}); 
	
</script>



<button class="declaration" id="declaration${ size + 1 }">
  <img id="declaration-icon" src="../resources/image/activity_info_declaration.png" alt="">
  </button>

<script>
     $(function(){			
		$('#declaration${ size + 1 }').one('click',function(e){
		   
			let user = '${ sessionScope.loginMember.userId }';
			
			if(!user) {
				alert("로그인을 진행해주세요.")
			} else {
				
			let reviewNum = '${ reviewList[size].num }';
			let reviewRep = '${ reviewList[size].recYn }';
			
			 $.ajax({
	            url:'${ pageContext.servletContext.contextPath }/review/report', //Controller에서 인식할 주소
	            type:'post',
	            data:{ num : reviewNum 
	            	,  recYn : reviewRep 
	            	},
	            success:function(result){ //callback
	            	
					if(result > 0 ){
						alert("후기 신고 접수가 완료되었습니다.");
					} else {
						alert("후기 신고 접수에 실패했습니다.");
					}
	            	e.preventDefault();
	            },
	            error:function(){
	                alert("error");
	            }
	        }); 
		    };
		});
	}); 
	
</script>

<br> <br>
<hr>
<br>

</c:forEach>

 <!-- pagination -->
 <jsp:include page="../common/actiInfoPaging.jsp"/>

 </c:when>
 </c:choose>
      
<hr>
<br>
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