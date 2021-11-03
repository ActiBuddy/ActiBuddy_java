<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>액티비티 조회 메인 화면</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <!-- 만든 스크립트 -->
    <link rel="stylesheet" href="../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../resources/css/activity-style.css">
    <link rel="stylesheet" href="../resources/css/FAQ.css">
    <script src="${ pageContext.servletContext.contextPath }/resources/js/activity.js?ver=3"></script>
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mate.css" rel="stylesheet" />
  <script>
  $(function() {
	
	$("#datepicker").on("propertychange change keyup paste input", function(){
		
    	$("#frm").attr("action","/acti/sort/controll").submit();
		
	}); 
	
	$('#sortBtn').on('change', function(){
    	
		$('#frm').attr("action","/acti/sort/controll").submit();

	}); 
	
	
	$("input[name=sport]").change(function(){
		
		let checkArr = $("input[name=sport]:checked");
		
		let checkList = "";
		for(let i = 0; i < checkArr.length; i++){
			if(i < checkArr.length-1){
				checkList += checkArr[i].value + ",";
			} else {
				checkList += checkArr[i].value;
			}
		}
		console.log(checkList);
	
		$('#sport').val(checkList);
	});
	
	$("input[name=ticket]").change(function(){
		
		let checkArr = $("input[name=ticket]:checked");
		let checkList = "";
		for(let i = 0; i < checkArr.length; i++){
			if(i < checkArr.length-1){
				checkList += checkArr[i].value + ",";
			} else {
				checkList += checkArr[i].value;
			}
		}
		console.log(checkList);
		$('#ticket').val(checkList);
	});	

	$("input[name=tour]").change(function(){
		
		let checkArr = $("input[name=tour]:checked");
		
		let checkList = "";
		for(let i = 0; i < checkArr.length; i++){
			if(i < checkArr.length-1){
				checkList += checkArr[i].value + ",";
			} else {
				checkList += checkArr[i].value;
			}
		}
		$('#tour').val(checkList);
	});
	
	$("input[name=spa]").change(function(){
		
		let checkArr = $("input[name=spa]:checked");
		
		let checkList = "";
		for(let i = 0; i < checkArr.length; i++){
			if(i < checkArr.length-1){
				checkList += checkArr[i].value + ",";
			} else {
				checkList += checkArr[i].value;
			}
		}
		$('#spa').val(checkList);
	});
	 
	 $("input[name=water]").change(function(){
			
			let checkArr = $("input[name=water]:checked");
			
			let checkList = "";
			for(let i = 0; i < checkArr.length; i++){
				if(i < checkArr.length-1){
					checkList += checkArr[i].value + ",";
				} else {
					checkList += checkArr[i].value;
				}
			}
			$('#water').val(checkList);
		});
	 
	 $("input[name=select]").change(function() {
			
			let checkArr = $("input[name=sport]:checked");
			let checkList = "";
			for(let i = 0; i < checkArr.length; i++){
				if(i < checkArr.length-1){
					checkList += checkArr[i].value + ",";
				} else {
					checkList += checkArr[i].value;
				}
			}
			
			console.log(checkList);
			
			$('#selectAll').val(checkList);
		});
	 
	 $("input[name=select2]").change(function() {
			
			let checkArr = $("input[name=ticket]:checked");
			let checkList = "";
			for(let i = 0; i < checkArr.length; i++){
				if(i < checkArr.length-1){
					checkList += checkArr[i].value + ",";
				} else {
					checkList += checkArr[i].value;
				}
			}
			
			console.log(checkList);
			
			$('#selectAll2').val(checkList);
		});
	 
	 
	 $("input[name=select3]").change(function() {
			
			let checkArr = $("input[name=spa]:checked");
			let checkList = "";
			for(let i = 0; i < checkArr.length; i++){
				if(i < checkArr.length-1){
					checkList += checkArr[i].value + ",";
				} else {
					checkList += checkArr[i].value;
				}
			}
			
			console.log(checkList);
			
			$('#selectAll3').val(checkList);
		});
	 
	 $("input[name=select4]").change(function() {
			
			let checkArr = $("input[name=tour]:checked");
			let checkList = "";
			for(let i = 0; i < checkArr.length; i++){
				if(i < checkArr.length-1){
					checkList += checkArr[i].value + ",";
				} else {
					checkList += checkArr[i].value;
				}
			}
			
			console.log(checkList);
			
			$('#selectAll4').val(checkList);
		});
	 
	 $("input[name=select5]").change(function() {
			
			let checkArr = $("input[name=water]:checked");
			let checkList = "";
			for(let i = 0; i < checkArr.length; i++){
				if(i < checkArr.length-1){
					checkList += checkArr[i].value + ",";
				} else {
					checkList += checkArr[i].value;
				}
			}
			
			console.log(checkList);
			
			$('#selectAll5').val(checkList);
		});
	
	if('${ price }' != 0 && '${ price }' != '0 - 300000'){
		
		$('#spanPrice').text('${ price }');
		$('#amount2').val('${ price }');
		
	} else if('${ price }' == '0 - 300000'){
		$('#spanPrice').text('가격');
	}
		
	$('#datepicker').val('${ date }');	
	$('#sortBtn').val('${ sort }');
	
	
	if( '${ move }' != "" ){
		location.href='#actiSearch';
	}
	
	if('${ sport }' != ''){
		let value = '${ sport }';
		let checkArr = value.split(',');
		for(let i = 0; i < checkArr.length; i++){
		if(checkArr[i] == $('input[name=sport][value="캠핑 & 글램핑"]').val()){
			$('input[name=sport][value="캠핑 & 글램핑"]').attr('checked', true);
		} else if(checkArr[i] == $('input[name=sport][value="루지 & 짚라인 & 어드벤처"]').val()){
			$('input[name=sport][value="루지 & 짚라인 & 어드벤처"]').attr('checked', true);
		} else if(checkArr[i] == $('input[name=sport][value="스키 & 스노보드"]').val()){
			$('input[name=sport][value="스키 & 스노보드"]').attr('checked', true);
		} 
	}
		$('#sport').val(checkArr);
	} else if('${ select }' != ''){
		let value = '${ selectAll }';
		let checkArr = value.split(',');
		
		$('input[name=sport]').attr('checked', true);
		$('input[name=select]').attr('checked', true);
		
		$('#selectAll').val(checkArr);
	}
	
	
	if('${ ticket }' != ''){
		let value = '${ ticket }';
		let checkArr = value.split(',');
		for(let i = 0; i < checkArr.length; i++){
			if(checkArr[i] == $('input[name=ticket][value="공원 & 자연"]').val()){
				$('input[name=ticket][value="공원 & 자연"]').attr('checked', true);
			} else if(checkArr[i] == $('input[name=ticket][value="테마파크 & 워터파크"]').val()){
				$('input[name=ticket][value="테마파크 & 워터파크"]').attr('checked', true);
			} else if(checkArr[i] == $('input[name=ticket][value="아쿠아리움 & 동물원"]').val()){
				$('input[name=ticket][value="아쿠아리움 & 동물원"]').attr('checked', true);
			} else if(checkArr[i] == $('input[name=ticket][value="루지 & 짚라인 & 어드벤처"]').val()){
				$('input[name=ticket][value="루지 & 짚라인 & 어드벤처"]').attr('checked', true);
			} else if(checkArr[i] == $('input[name=ticket][value="박물관 & 미술관"]').val()){
				$('input[name=ticket][value="박물관 & 미술관"]').attr('checked', true);
			} 
		}
		
		$('#ticket').val(checkArr);
		
	} else if('${ selectAll2 }' != '') {
		let value = '${ selectAll2 }';
		let checkArr = value.split(',');

		$('input[name=ticket]').attr('checked', true);
		$('input[name=select2]').attr('checked', true);
		
		$('#selectAll2').val(checkArr);
	}
	  
	if('${ spa }' != ''){
		let value = '${ spa }';
		let checkArr = value.split(',');
		
		for(let i = 0; i < checkArr.length; i++){
			if(checkArr[i] == $('input[name=spa][value="스파 & 온천"]').val()){
				$('input[name=spa][value="스파 & 온천"]').attr('checked', true);
			} else if(checkArr[i] == $('input[name=spa][value="웰빙 & 웰니스"]').val()){
				$('input[name=spa][value="웰빙 & 웰니스"]').attr('checked', true);
			}
		} 
		$('#spa').val(checkArr);
	} else if('${ selectAll3 }' != ''){
		let value = '${ selectAll3 }';
		let checkArr = value.split(',');

		$('input[name=spa]').attr('checked', true);
		$('input[name=select3]').attr('checked', true);
		
		$('#selectAll3').val(checkArr);
	}
	 
	if('${ tour }' != ''){
		let value = '${ tour }';
		let checkArr = value.split(',');
		
		for(let i = 0; i < checkArr.length; i++){
			if(checkArr[i] == $('input[name=tour][value="워킹 & 자전거투어"]').val()){
				$('input[name=tour][value="워킹 & 자전거투어"]').attr('checked', true);
			} else if(checkArr[i] == $('input[name=tour][value="버스 & 스쿠터 & ATV투어"]').val()){
				$('input[name=tour][value="버스 & 스쿠터 & ATV투어"]').attr('checked', true);
			}
		} 
		$('#tour').val(checkArr);
	} else if('${ selectAll4 }' != ''){
		let value = '${ selectAll4 }';
		let checkArr = value.split(',');

		$('input[name=tour]').attr('checked', true);
		$('input[name=select4]').attr('checked', true);
		
		$('#selectAll4').val(checkArr);
	}
	
	if('${ water }' != ''){
		let value = '${ water }';
		let checkArr = value.split(',');
		
		for(let i = 0; i < checkArr.length; i++){
			if(checkArr[i] == $('input[name=water][value="패들보드 & 카약 & 래프팅"]').val()){
				$('input[name=water][value="패들보드 & 카약 & 래프팅"]').attr('checked', true);
			} else if(checkArr[i] == $('input[name=water][value="서핑 & 기타 수상레저"]').val()){
				$('input[name=water][value="서핑 & 기타 수상레저"]').attr('checked', true);
			}
		} 
		$('#water').val(checkArr);
	} else if('${ selectAll5 }' != ''){
		let value = '${ selectAll5 }';
		let checkArr = value.split(',');

		$('input[name=water]').attr('checked', true);
		$('input[name=select5]').attr('checked', true);
		
		$('#selectAll5').val(checkArr);
	}	
  });
  </script>
  </head>
  <body>
    <!-- 네비게이션 바-->
    <jsp:include page="../common/menubar.jsp"/>
    <!-- 메인 이미지 및 설명 -->
  
    <div class="container mb-4">
        <div class="image">
          <div class="faq">
            <img src="${locationActivity.image}">
          </div>
            <div>
            <h1 id="title" style="font-weight: 900;">${locationActivity.name}</h1>
            <p id="content">
                ${locationActivity.info}
            </p>
            </div>
        </div>
    </div>    
        
    <!-- 여행 가이드 및 팁-->
    <div class="container mt-5 mb-5">
        <div class="row">
          <div class="col">
            <h1 id="tipTitle" style="margin-bottom: 20px; font-weight: 700;">${locationActivity.name} 여행 가이드 및 팁</h1>
            <div class=tip>
            <p id="tipBody">
            ${locationActivity.tip}
            </p>
            </div>
        </div>
     
      <div class="col" id="visit">
        <h1 style="margin-bottom: 20px; font-weight: 700;">방문하기 좋은 시기</h1>
        <ul>
          <li>
           <c:forEach var="data1" items="${ vistis['vistis'] }">
           ${data1}
          </c:forEach>
          </li>
        </ul>
      </div>
      </div>
    </div>
          
    <!-- 인기 액티비티 -->
    <div class="container mt-5 mb-md-5">
        <h1 style="font-weight: 700">${locationActivity.name} 추천 액티비티</h1>
    </div>
    <div class="container mt-4">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="float: none; margin:0 auto;">
            <c:forEach items="${randomList.activityList}" var="acti" end="2">
            <div class="col">
            <a href="/acti/activity/information?actiName=${acti.name}" style="font-size: 16px">
              <div class="card shadow-sm" id="clickAcit">
                <img src="${acti.image}"  id="check1" width="100%" height="225"  role="img" ></img>
                <div class="card-body" style="height : 190px">
                  <p class="card-text">
                      ${acti.name}
                  </p>
                  <p>별점 : ${ acti.star }</p>
                  <p>조회수 : ${acti.views} </p>
                  <p>액티비티 마감일 : ${ acti.endDate }</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">₩${acti.price}부터</small>
                  </div>
                </div>
              </div>
              </a>
            </div>
        </c:forEach>
    </div>
   </div>
    

      <!-- 액티비티 조회 -->
    <div class="container mt-5">
      <h1 style="font-weight: 700;">${locationActivity.name} 액티비티</h1>
      <hr>
    </div>   
  <div class="bigDiv">
    <div class="side-2" style="height: 530px;">
      <h3 style="margin-left: 10%;">카테고리</h3>
      <br>
      <form action="/acti/sort/controll" method="get" id="frm">
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            아웃도어 & 스포츠
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="sport" value="캠핑 & 글램핑"><span>캠핑 & 글램핑</span></li>
            <li class="mb-4"><input type="checkbox" name="sport" value="루지 & 짚라인 & 어드벤처"><span>루지 & 짚라인 & 어드벤처</span></li>
            <li class="mb-4"><input type="checkbox" name="sport" value="스키 & 스노보드"><span>스키 & 스노보드<span></li>
            <li class="mb-4"><input type="checkbox" name="select" value="select"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck" id="sport"/>
          <input type="hidden" name="selectAll" id="selectAll">
        </div>
      </div> 
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            티켓 & 입장권
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="ticket" value="공원 & 자연"><span>공원 & 자연</span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="아쿠아리움 & 동물원"><span>아쿠아리움 & 동물원</span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="테마파크 & 워터파크"><span>테마파크 & 워터파크<span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="박물관 & 미술관"><span>박물관 & 미술관<span></li>
            <li class="mb-4"><input type="checkbox" name="select2" value="select2"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck1" id="ticket"/>
          <input type="hidden" name="selectAll2" id="selectAll2">
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            스파 & 테라피
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="spa" value="스파 & 온천"><span>스파 & 온천</span></li>
            <li class="mb-4"><input type="checkbox" name="spa" value="웰빙 & 웰니스"><span>웰빙 & 웰니스</span></li>
            <li class="mb-4"><input type="checkbox" name="select3" value="select3"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck2" id="spa"/>
          <input type="hidden" name="selectAll3" id="selectAll3">
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            투어
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="tour" value="워킹 & 자전거투어"><span>워킹 & 자전거투어</span></li>
            <li class="mb-4"><input type="checkbox" name="tour" value="버스 & 스쿠터 & ATV투어"><span>버스 & 스쿠터 & ATV투어</span></li>
            <li class="mb-4"><input type="checkbox" name="select4" value="select4"><span>모두선택</span></li>
             <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck3" id="tour"/>
          <input type="hidden" name="selectAll4" id="selectAll4">
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            수상 액티비티
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="water" value="패들보드 & 카약 & 래프팅"><span>패들보드 & 카약 & 래프팅</span></li>
            <li class="mb-4"><input type="checkbox" name="water" value="서핑 & 기타 수상레저"><span>서핑 & 기타 수상레저</span></li>
            <li class="mb-4"><input type="checkbox" name="select5" value="select5"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck4" id="water"/>
          <input type="hidden" name="selectAll5" id="selectAll5">
        </div>
      </div>
      <input type="hidden" name="hdLocationName" value="${locationActivity.name}"/>
    </div>
    <div class="div2">
        <h2 class="container mt-5 mb-5" style="float: none; margin:100 auto; font-weight: 700;" id="actiSearch">${selectCriteria.totalCount}건의 검색 결과</h2>
        <div class="container" style="float: none; margin:100 auto;">
          <div class="row mb-5" style="float: none; margin:0 auto;">
            <div class="col" style="flex: 0;">
              <div class="date">
              <p style="font-size: 18px">예약날짜 : <input type="text" id="datepicker" name="date" readonly="readonly"></p>
              </div>
            </div>
            <div class="col" style="flex: 1.0; padding: 0px;" >
              <div class="dropdown" style="margin-left: 50px;">
                <button class="btn btn-secondary dropdown-toggle"  id="priceBtn" data-bs-toggle="dropdown" aria-expanded="false">
                <span id="spanPrice">가격</span>
                </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <div class="price">
                      <input type="text" id="amount2" name="price" readonly style="border:0; color:#f6931f; font-weight:bold;">
                      <div id="slider-range" style="margin-top: 10px;"></div>
                      <button type="submit" class="btn btn-success" id="sub">확인</button>
                    </div>
                  </ul>
              </div>
            </div>
            <div class="col">
              <span id="sort">정렬 : </span>
              <div class="dropdown">
                <select id="sortBtn" name="sort">
                    <option value="views">인기순</option>
                    <option value="star">별점순</option>
                    <option value="new">최신순</option>
                   	<option value="random">랜덤추천</option>
                    <option value="price">낮은가격순</option>
                    
                </select>
              </div>
            </div>
          </div>
          <input type="hidden" name="hdLocationName" value="${locationActivity.name}"/>
          </form>
        </div>
        <div class="container" id="test" style="float: none; margin:100 auto;">
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="float: none; margin:0 auto;">
            <c:forEach items="${locationActivity.activityList}" var="acti">
            <div class="col">
            <a href="/acti/activity/information?actiName=${acti.name}" style="font-size: 16px">
              <div class="card shadow-sm">
                <img src="${acti.image}"  id="check1" width="100%" height="225"  role="img" ></img>
                <div class="card-body" style="height : 190px">
                  <p class="card-text">
                      ${acti.name}
                  </p>
                  <p>별점 : ${ acti.star }</p>
                  <p>조회수 : ${ acti.views }</p>
                  <p>액티비티 마감일 : ${ acti.endDate }</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">₩${acti.price}부터</small>
                  </div>
                </div>
              </div>
              </a>
            </div>
            </c:forEach>
          </div> 
        </div>
      </div>
    </div>  
    
  <!-- 페이지 이동창 -->    
  <nav>
    <div class="container mt-5">
   <jsp:include page="../common/activitypage.jsp"/>
  </div>
  </nav>
  
    <!-- 메이트 마감 임박 -->
    <div class="mate_hurry1">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_hurry.png">
    </div>
    <div class="mate_hurry2">
        <div class="mate_hurry3">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_one.png">
            <span class="h_title">
                같이 여수갈 사람 구해요
            </span>
            <span class="h_text">
                parisbaguette<br><br>
                인원:2/6<br><br>
                희망연령:20대,30대<br><br>
                남녀무관
            </span>
            <span class="h_date">
                ~10/17
            </span>
            <span class="h_btn">
                <button>신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_two.png">
            <span class="h_title">
                같이 여수갈 사람 구해요
            </span>
            <span class="h_text">
                parisbaguette<br><br>
                인원:2/6<br><br>
                희망연령:20대,30대<br><br>
                남녀무관
            </span>
            <span class="h_date">
                ~10/17
            </span>
            <span class="h_btn">
                <button>신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="${ pageContext.servletContext.contextPath }/resources/image/mate_three.png">
            <span class="h_title">
                같이 여수갈 사람 구해요
            </span>
            <span class="h_text">
                parisbaguette<br><br>
                인원:2/6<br><br>
                희망연령:20대,30대<br><br>
                남녀무관
            </span>
            <span class="h_date">
                ~10/17
            </span>
            <span class="h_btn">
                <button>신청하러가기</button>
            </span>
        </div>
    </div>
 <!-- 하단 footer-->
<jsp:include page="../common/footer.jsp"/>
  </body>
</html>