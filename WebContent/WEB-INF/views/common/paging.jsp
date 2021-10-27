<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="${ pageContext.servletContext.contextPath }/resources/css/mateReview.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
 <!-- pagination + 버튼 -->
        <nav aria-label="Page navigation example">
            <ul class="pagination">
              <li class="page-item">
                	<a id="startPage" class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link-num" href="#">1</a></li>
              <li class="page-item"><a class="page-link-num" href="#">2</a></li>
              <li class="page-item"><a class="page-link-num" href="#">3</a></li>
              <li class="page-item"><a class="page-link-num" href="#">4</a></li>
              <li class="page-item"><a class="page-link-num" href="#">5</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>

</body>
</html>