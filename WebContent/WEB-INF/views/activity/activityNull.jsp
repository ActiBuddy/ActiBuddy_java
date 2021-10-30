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
    <script src="${ pageContext.servletContext.contextPath }/resources/js/activity.js?ver=2"></script>
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
		
		let checkList = [];
		for(let i = 0; i < checkArr.length; i++){
			checkList[i] = checkArr[i].value;
		}
		
		let check = JSON.stringify(checkList); 
		console.log(check);
		let list = JSON.parsing(check);
		$('#sport').val(list);
	});
	
	$("input[name=ticket]").change(function(){
		
		let checkArr = $("input[name=ticket]:checked");
		
		let checkList = [];
		for(let i = 0; i < checkArr.length; i++){
			checkList[i] = checkArr[i].value;
		}
		
		let check = JSON.stringify(checkList); 
		console.log(check);
		let list = JSON.parsing(check);
		$('#ticket').val(list);
	});	

	$("input[name=tour]").change(function(){
		
		let checkArr = $("input[name=tour]:checked");
		
		let checkList = [];
		for(let i = 0; i < checkArr.length; i++){
			checkList[i] = checkArr[i].value;
		}
		
		let check = JSON.stringify(checkList); 
		console.log(check);
		$('#tour').val(check);
	});
	
	$("input[name=spa]").change(function(){
		
		let checkArr = $("input[name=spa]:checked");
		
		let checkList = [];
		for(let i = 0; i < checkArr.length; i++){
			checkList[i] = checkArr[i].value;
		}
		
		let check = JSON.stringify(checkList); 
		console.log(check);
		let listArr = JSON.parse(check);
		console.log(listArr);
		$('#spa').val(listArr);
	});
	 
	 $("input[name=water]").change(function(){
			
			let checkArr = $("input[name=water]:checked");
			
			let checkList = [];
			for(let i = 0; i < checkArr.length; i++){
				checkList[i] = checkArr[i].value;
			}
			
			let check = JSON.stringify(checkList); 
			console.log(check);
			$('#water').val(check);
		});
	
	if( '${ move }' != null ){
		location.href='#actiSearch';
	}
	  
  });
  </script>
  </head>
  <br>
  <body>
    <!-- 네비게이션 바-->
    <jsp:include page="../common/menubar.jsp"/>
    <!-- 메인 이미지 및 설명 -->
  
    <div class="container mb-4">
        <div class="image">
          <div class="faq">
            <img src="${location.image}">
          </div>
            <div>
            <h1 id="title">${location.name}</h1>
            <p id="content">
                ${location.info}
            </p>
            </div>
        </div>
    </div>    
        
    <!-- 여행 가이드 및 팁-->
    <div class="container mt-5 mb-5">
        <div class="row">
          <div class="col">
            <h1 id="tipTitle" style="margin-bottom: 20px;">${location.name} 여행 가이드 및 팁</h1>
            <div class=tip>
            <p id="tipBody">
            ${location.tip}
            </p>
            </div>
        </div>
     
      <div class="col" id="visit">
        <h1 style="margin-bottom: 20px;">방문하기 좋은 시기</h1>
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
        <h1>${location.name} 인기 액티비티</h1>
    </div>
    <div class="container mt-4">
        <div class="row">
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">등산</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">서핑</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top">
                      <div class="card-body">
                      <h3 class="card-text">페러글라이딩</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">스키</h3>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="../resources/image/seoul.jpeg" class="card-img-top" alt="...">
                      <div class="card-body">
                      <h3 class="card-text">짚라인</h3>
                    </div>
                  </div>
            </div>
        </div>
    </div>

      <!-- 액티비티 조회 -->
    <div class="container mt-5">
      <h1>${location.name} 액티비티</h1>
      <hr>
    </div>   
  <div class="bigDiv">
    <div class="side-2" style="height: 530px;">
      <h3 style="margin-left: 10%;">카테고리</h3>
      <br>
      <form action="/acti/sort/controll" method="post">
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            아웃도어 & 스포츠
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="sport" value="comping"><span>캠핑 & 글램핑</span></li>
            <li class="mb-4"><input type="checkbox" name="sport" value="luge"><span>루지 & 짚라인 & 어드벤처</span></li>
            <li class="mb-4"><input type="checkbox" name="sport" value="ski"><span>스키 & 스노보드<span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll" value="selectAll"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck" id="sport"/>
        </div>
      </div> 
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            티켓 & 입장권
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="ticket" value="park" class="ch"><span>공원 & 자연</span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="zoo" class="ch"><span>아쿠아리움 & 동물원</span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="water park" class="ch"><span>테마파크 & 워터파크<span></li>
            <li class="mb-4"><input type="checkbox" name="ticket" value="museum" class="ch"><span>박물관 & 미술관<span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll2" value="selectAll2" class="ch"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck1" id="ticket"/>
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            스파 & 테라피
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="spa" value="spa"><span>온천</span></li>
            <li class="mb-4"><input type="checkbox" name="spa" value="wellbeing"><span>웰빙& 웰니스</span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll3" value="selectAll3"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck2" id="spa"/>
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            투어
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="tour" value="working"><span>워킹 & 자전거투어</span></li>
            <li class="mb-4"><input type="checkbox" name="tour" value="bus"><span>버스 & 스쿠터 & ATV투어</span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll4" value="selectAll4"><span>모두선택</span></li>
             <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck3" id="tour"/>
        </div>
      </div>
      <div class="menu">
        <div class="btn-group mb-5">
          <span class="dropdown-toggle" style="padding-left: 20px; font-size: 16px;" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            수상 액티비티
          </span>
          <ul class="dropdown-menu" style="padding-left: 30px; width: 220px; height: 220px;" >
            <li class="mb-4"><input type="checkbox" name="water" value="surfing"><span>서핑</span></li>
            <li class="mb-4"><input type="checkbox" name="water" value="kayak"><span>패들보드 & 카약 & 래프팅</span></li>
            <li class="mb-4"><input type="checkbox" name="selectAll5" value="selectAll5"><span>모두선택</span></li>
            <input type="submit" value="확인"/>
          </ul>
          <input type="hidden" name="hdCheck4" id="water"/>
        </div>
      </div>
      <input type="hidden" name="hdLocationName" value="${location.name}"/>
      </form>
    </div>
    <div class="div2">
    <form method="post" action="/acti/sort/controll" id="frm">
        <h2 class="container mt-5 mb-5" style="float: none; margin:100 auto;" id="actiSearch">0건의 검색 결과</h2>
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
                  	<option value="popular">인기순</option>
                    <option value="star">별점순</option>
                    <option value="price">낮은가격순</option>
                    <option value="new">최신순</option>
                </select>
              </div>
            </div>
          </div>
          <input type="hidden" name="hdLocationName" value="${location.name}"/>
          </form>
        </div>
        <div class="container" id="test" style="float: none; margin:100 auto;">
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="float: none; margin:0 auto;">
            <h1 class="container">해당 검색 결과가 없습니다</h1>
        </div> 
      </div>
    </div> 
   </div> 
  
    <!-- 메이트 마감 임박 -->
    <div class="mateDiv" style="margin-top : 33%; margin-left : 23%">
      <h1 style="margin-right: 75%; margin-top: 10%">메이트 마감 임박</h1>
      <div class="row" id="box">
        <div class="col">
          <a href="../Mate/matemain.html"><img id="mateImg" src="../resources/image/mate.png"></a>
        </div>
        <div class="col">
          <div class="mateBox">
            <div class="mateTop">
              <img src="../resources/image/heart.png">
              <h5 id="mateTitle">감귤마을 스쿠버 다이빙</h5>
            </div>
            <div class="matebody">
            <p id="left">작성자 : </p><p id="left">감귤</p> 
            <p id="date">~10/8</p>  
            <button type="button" class="btn btn-success" id="btn">참여하기</button>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="mateBox">
            <div class="mateTop">
              <img src="../resources/image/heart.png">
              <h5 id="mateTitle">감귤마을 스쿠버 다이빙</h5>
            </div>
            <div class="matebody">
            <p id="left">작성자 : </p><span id="left">감귤</span> 
            <p id="date">~10/8</p>
            <button type="button" class="btn btn-success" id="btn">참여하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
 <!-- 하단 footer-->
<jsp:include page="../common/footer.jsp"/>
  </body>
</html>