<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--     <link href="../resources/css/actibuddy.css" rel="stylesheet" />
 -->
    <title>main</title>
  </head>
 
  <body>
 

      <footer>
        <div class="footer">
          <span></span>

          <ul>
            2021 액티버디
          </ul>
          <ul>
            회사소개
            <li><a href = "${ pageContext.servletContext.contextPath }/introduce">액티버디소개</a></li>
          </ul>

          <ul>
            파트너십
            <li><a href="${ pageContext.servletContext.contextPath }/partnership">파트너십</a></li>
          </ul>

          <ul>
            이용약관
            <li><a href="${ pageContext.servletContext.contextPath }/privacyPolicy">약관</a></li>
          </ul>

          <ul>
            결제수단
            <li><a href="#">카카오페이</a></li>
          </ul>
          <span></span>
          <span></span>
        </div>
      </footer>
    </main>
  </body>
</html>
