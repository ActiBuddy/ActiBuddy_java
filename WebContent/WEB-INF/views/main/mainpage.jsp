<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ACTIBUDDY</title>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link href="resources/css/actibuddy.css" rel="stylesheet"/>
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
     <script src="${ pageContext.servletContext.contextPath }/resources/js/menubar.js"></script>
     <link href="${ pageContext.servletContext.contextPath }/resources/css/mate.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
 
</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
	
	
	<main class="wrapper">
		<div>
			<img src="resources/image/actibuddylogo.png" class="mainlogo">
		</div>

		<div class="mainsearch">
				<form action="/acti/search/activity" method="get">
				<input type="text" size="50" placeholder="Search" name="searchValue" id="searchBar1">
				<button type="submit" class="search-btn">검색하기</button>
				</form>
		</div>

		<div class="all1">

			<div class="mainimage">
				<c:forEach var="location" items="${ locationList }">
				<div class="si">
					<a href="activity/location?locationName=${ location.name }"><img src="${ location.mainImg } "></a>
					<div>
						<h1 style="font-weight: 900">${ location.name }</h1>
					</div>
				</div>
				</c:forEach>
				</div>
			</div>

			<div class="mate">
				<img src="resources/image/005.png" style="height: 700px">
			</div>

			<br><br><br>
					<div class="container mt-4">
					<h1 style="font-weight: 700">액티버디 인기 액티비티</h1>
			       <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="float: none; margin:0 auto;">
			           <c:forEach items="${activityList}" var="acti" end="5">
			           <div class="col">
			           <a href="/acti/activity/information?actiName=${acti.name}" style="font-size: 16px">
			             <div class="card shadow-sm" id="clickAcit">
			               <img src="${acti.mainImg}"  id="check1" width="100%" height="225"  role="img" ></img>
			               <div class="card-body" style="height : 210px">
			                 <p class="card-text">
			                     ${acti.name}
			                 </p>
			                 <p>별점 : ${ acti.star }</p>
			                 <p>조회수 : ${ acti.views } </p>
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
				

			<div class="mate">
				<img src="resources/image/mate.png">
			</div>

	<!-- 메이트 마감 임박 -->
    <div class="mate_hurry1">
        <img src="resources/image/mate_hurry.png">
    </div>
	<c:set var="hurry" value="${ hurryFindList }"/>
    <div class="mate_hurry2">
        <div class="mate_hurry3">
            <img src="resources/image/mate_one.png">
            <span class="h_title">
                ${ hurry[0].title }
            </span>
            <span class="h_text">
                ${ hurry[0].userId }<br><br>
                인원:${ hurry[0].count }/${ hurry[0].people }<br><br>
                <c:if test="${ hurry[0].age eq 0 }">
                희망연령:연령무관<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 23 }">
                희망연령:20대~30대<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 34 }">
                희망연령:30대~40대<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 45 }">
                희망연령:40대~50대<br><br>
                </c:if>
                <c:if test="${ hurry[0].age eq 56 }">
                희망연령:50대~60대<br><br>
                </c:if> 
                <c:if test="${ hurry[0].gender eq 'B' }">
                남녀무관
                </c:if>
                <c:if test="${ hurry[0].gender eq 'W' }">
                여성만
                </c:if>
                <c:if test="${ hurry[0].gender eq 'M' }">
                남성만
                </c:if>
            </span>
            <span class="h_date">
            ~<fmt:formatDate value="${ hurry[0].deadline }" type="date" pattern="MM/dd"/><br> 
            </span>
            <span class="h_btn">
                <button onclick="location.href='/acti/mate/find/select?num=${ hurry[0].num }'">신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="resources/image/mate_two.png">
            <span class="h_title">
                ${ hurry[1].title }
            </span>
            <span class="h_text">
                ${ hurry[1].userId }<br><br>
                인원:${ hurry[1].count }/${ hurry[1].people }<br><br>
                <c:if test="${ hurry[1].age eq 0 }">
                희망연령:연령무관<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 23 }">
                희망연령:20대~30대<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 34 }">
                희망연령:30대~40대<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 45 }">
                희망연령:40대~50대<br><br>
                </c:if>
                <c:if test="${ hurry[1].age eq 56 }">
                희망연령:50대~60대<br><br>
                </c:if> 
                <c:if test="${ hurry[1].gender eq 'B' }">
                남녀무관
                </c:if>
                <c:if test="${ hurry[1].gender eq 'W' }">
                여성만
                </c:if>
                <c:if test="${ hurry[1].gender eq 'M' }">
                남성만
                </c:if>
            </span>
            <span class="h_date">
             ~<fmt:formatDate value="${ hurry[1].deadline }" type="date" pattern="MM/dd"/><br>
            </span>
            <span class="h_btn">
                <button onclick="location.href='/acti/mate/find/select?num=${ hurry[1].num }'">신청하러가기</button>
            </span>
        </div>
        <div class="mate_hurry3">
            <img src="resources/image/mate_three.png">
            <span class="h_title">
                ${ hurry[2].title }
            </span>
            <span class="h_text">
                ${ hurry[2].userId }<br><br>
                인원:${ hurry[2].count }/${ hurry[2].people }<br><br>
                <c:if test="${ hurry[2].age eq 0 }">
                희망연령:연령무관<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 23 }">
                희망연령:20대~30대<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 34 }">
                희망연령:30대~40대<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 45 }">
                희망연령:40대~50대<br><br>
                </c:if>
                <c:if test="${ hurry[2].age eq 56 }">
                희망연령:50대~60대<br><br>
                </c:if> 
                <c:if test="${ hurry[2].gender eq 'B' }">
                남녀무관
                </c:if>
                <c:if test="${ hurry[2].gender eq 'W' }">
                여성만
                </c:if>
                <c:if test="${ hurry[2].gender eq 'M' }">
                남성만
                </c:if>
            </span>
            <span class="h_date">
              ~<fmt:formatDate value="${ hurry[2].deadline }" type="date" pattern="MM/dd"/><br>
            </span>
            <span class="h_btn">
                <button onclick="location.href='/acti/mate/find/select?num=${ hurry[2].num }'">신청하러가기</button>
            </span>
        </div>
    </div>


	</main>
	<br><br><br>
		<jsp:include page="../common/footer.jsp"/>
</body>
</html>