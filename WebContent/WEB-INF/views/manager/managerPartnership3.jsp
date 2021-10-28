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

    <!-- <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav> -->

    
    
   <jsp:include page="../common/managersidebar.jsp"/>


          <center>
          <h2 class="sub-header">파트너십 진행 상황</h2>
        </center>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>기업 번호</th>
                  <th>기업 이름</th>
                  <th>분류</th>
                  <th>최근 진행일</th>
                  <th>파트너십 가입여부</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Lorem</td>
                  <td>ipsum</td>
                  <td>2021/10/16</td>
                  <td>1회</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>amet</td>
                  <td>consectetur</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Integer</td>
                  <td>nec</td>
                  <td>2021/10/16</td>
                  <td>1회</td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>libero</td>
                  <td>Sed</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>dapibus</td>
                  <td>diam</td>
                  <td>2021/10/16</td>
                  <td>블랙 리스트</td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>Nulla</td>
                  <td>quis</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
                <tr>
                  <td>7</td>
                  <td>nibh</td>
                  <td>elementum</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>sagittis</td>
                  <td>ipsum</td>
                  <td>2021/10/16</td>
                  <td>블랙 리스트</td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>Fusce</td>
                  <td>nec</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>augue</td>
                  <td>semper</td>
                  <td>2021/10/16</td>
                  <td>0회</td>
                </tr>
                <tr>
                  <td>11</td>
                  <td>massa</td>
                  <td>Vestibulum</td>
                  <td>2021/10/16</td>
                  <td>2회</td>
                </tr>
                <tr>
                  <td>12</td>
                  <td>eget</td>
                  <td>nulla</td>
                  <td>2021/10/16</td>
                  <td>2회</td>
                </tr>
                <tr>
                  <td>13</td>
                  <td>taciti</td>
                  <td>sociosqu</td>
                  <td>2021/10/16</td>
                  <td>블랙 리스트</td>
                </tr>
                <tr>
                  <td>14</td>
                  <td>torquent</td>
                  <td>per</td>
                  <td>2021/10/16</td>
                  <td>2회</td>
                </tr>
                <tr>
                  <td>15</td>
                  <td>per</td>
                  <td>inceptos</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
                <tr>
                  <td>16</td>
                  <td>sodales</td>
                  <td>ligula</td>
                  <td>2021/10/16</td>
                  <td>3회</td>
                </tr>
              </tbody>
            </table>
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