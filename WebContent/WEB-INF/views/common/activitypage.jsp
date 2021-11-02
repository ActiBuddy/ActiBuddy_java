<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${ pageContext.servletContext.contextPath }/resources/css/paging.css" rel="stylesheet">
</head>
<body>

 <div class="pagingArea" style="display: inline-flex; margin-left: 400px;" align="center">

	    <!-- 맨 앞으로 이동 버튼 -->
	    <button id="startPage"><<</button>
	    
		<!-- 이전 페이지 버튼 -->
		<c:if test="${ requestScope.selectCriteria.pageNo <= 1 }">
			<button disabled><</button>
		</c:if>
		<c:if test="${ requestScope.selectCriteria.pageNo > 1 }">
			<button class="page-link" id="prevPage"><</button>
		</c:if>
		
		<!-- 숫자 버튼 -->
		<c:forEach var="p" begin="${ requestScope.selectCriteria.startPage }" end="${ requestScope.selectCriteria.endPage }" step="1">
			<c:if test="${ requestScope.selectCriteria.pageNo eq p }">
				<button id="page-link-num1" ><c:out value="${ p }"/></button>
			</c:if>
			<c:if test="${ requestScope.selectCriteria.pageNo ne p }">
				<button class="page-link-num" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
			</c:if>
		</c:forEach>
		
		<!-- 다음 페이지 버튼 -->
		<c:if test="${ requestScope.selectCriteria.pageNo >= requestScope.selectCriteria.maxPage }">
			<button disabled>></button>
		</c:if>
		<c:if test="${ requestScope.selectCriteria.pageNo < requestScope.selectCriteria.maxPage }">
			<button class="page-link" id="nextPage">></button>
		</c:if>

		<!-- 마지막 페이지로 이동 버튼 -->
		<button id="maxPage">>></button> 
	</div>
	
	
	<script>
			let link = "";
		if(location.pathname == '/acti/sort/controll'){
			link = location.pathname + "?hdLocationName=${ locationActivity.name }" + "&price=${ price }" 
			+ "&sort=${ sort } " + "&date=${ date }" + "&sport=${sport}" + "&ticket=${ticket}" + "&tour=${tour}"
			+ "&spa=${spa}" + "&water=${water}";
		} else if(location.pathname == '/acti/activity/location'){
			 link = location.pathname + "?locationName=${ locationActivity.name }";
		} else if(location.pathname == 'acti/search/activity'){
			link = location.pathname
		} else {
			link = location.pathname
		}
		
		let searchText = "";
		
		if(${ !empty requestScope.selectCriteria.searchCondition? true: false }) {
			searchText += "&searchCondition=${ requestScope.selectCriteria.searchCondition }";
		}
		
		if(${ !empty requestScope.selectCriteria.searchValue? true: false }) {
			link += "?searchValue=${ requestScope.selectCriteria.searchValue }" + "&price=${ price }";
		}
		
		if(document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function() {
				location.href = link + "&currentPage=1" + searchText;
			}
		}
		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link + "&currentPage=${ requestScope.selectCriteria.pageNo - 1 }" + searchText;
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "&currentPage=${ requestScope.selectCriteria.pageNo + 1 }"  + searchText;
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "&currentPage=${ requestScope.selectCriteria.maxPage }" + searchText;
			}
		}
		
		function pageButtonAction(text) {
			location.href = link + "&currentPage=" + text + searchText;
		}
	</script>

</body>
</html>