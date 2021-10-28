<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>관리자 페이지</title>

    <!-- Bootstrap core CSS -->
    <link href="../../resources/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../resources/css/dashborad.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../resources/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body> 
    
    <jsp:include page="../common/managersidebar.jsp"/>

          <h2 class="sub-header">액티비티 후기 신고 접수</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>글 번호</th>
                  <th>닉네임</th>
                  <th>글 제목</th>
                  <th>작성 일자</th>
                  <th>유저 신고 횟수</th>
                  <th>신고 처리</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Lorem</td>
                  <td><a href="../Mate/mate_writing.html">토토 조아요</a></td>
                  <td>2021/10/16</td>
                  <td>1회</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>amet</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Integer</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>1회</td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>libero</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>dapibus</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>Nulla</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
                <tr>
                  <td>7</td>
                  <td>nibh</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>sagittis</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>2회</td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>Fusce</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>augue</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>11</td>
                  <td>massa</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>2회</td>
                </tr>
                <tr>
                  <td>12</td>
                  <td>eget</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>2회</td>
                </tr>
                <tr>
                  <td>13</td>
                  <td>taciti</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>1회</td>
                </tr>
                <tr>
                  <td>14</td>
                  <td>torquent</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>2회</td>
                </tr>
                <tr>
                  <td>15</td>
                  <td>per</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
                <tr>
                  <td>16</td>
                  <td>sodales</td>
                  <td>토토 조아요</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
              </tbody>
            </table>

            <nav>
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>

          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../resources/js/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>