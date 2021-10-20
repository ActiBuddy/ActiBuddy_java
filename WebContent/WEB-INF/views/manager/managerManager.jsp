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
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body> 
    
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_member.html">회원 관리</a></li>
            <li><a href="#">전체 회원 조회</a></li>
            <li><a href="#">경고 회원 조회</a></li>
            <li><a href="#">탈퇴 회원 조회</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_partnership(1).html">파트너십 관리</a></li>
            <li><a href="">파트너십 플랫폼 조회</a></li>
            <li><a href="">파트너십 문의 접수</a></li>
            <li><a href="">파트너십 진행 상황</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_declaration.html">신고 접수</a></li>
            <li><a href="">메이트 매칭</a></li>
            <li><a href="">메이트 평가</a></li>
            <li><a href="">메이팅 후기</a></li>
            <li><a href="">액티비티 후기</a></li>
            <li><a href="">댓글</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="../manager/manager_manager.html">관리자 관리</a></li>
            <li><a href="">관리자 권한 부여</a></li>
            <li><a href="">관리자 파트 부여</a></li>
          </ul>
        </div>

          <h2 class="sub-header">관리자 권한 부여</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>관리자 번호</th>
                  <th>관리자 ID</th>
                  <th>관리 파트</th>
                  <th>관리자 등급</th>
                  <th>휴면 상태</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Lorem</td>
                  <td>관리자</td>
                  <td>슈퍼</td>
                  <td>N</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>amet</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle1" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        회원
                        <span class="caret"></span>
                      </button>
                      <ul id="drop1" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle2" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        Y
                        <span class="caret"></span>
                      </button>
                      <ul id="drop2" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Integer</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle3" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        회원
                        <span class="caret"></span>
                      </button>
                      <ul id="drop3" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle4" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        N
                        <span class="caret"></span>
                      </button>
                      <ul id="drop4" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>libero</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle5" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        회원
                        <span class="caret"></span>
                      </button>
                      <ul id="drop5" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle6" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        N
                        <span class="caret"></span>
                      </button>
                      <ul id="drop6" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>dapibus</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle7" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        파트너십
                        <span class="caret"></span>
                      </button>
                      <ul id="drop7" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle8" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        N
                        <span class="caret"></span>
                      </button>
                      <ul id="drop8" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>Nulla</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle9" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        파트너십
                        <span class="caret"></span>
                      </button>
                      <ul id="drop9" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle10" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        Y
                        <span class="caret"></span>
                      </button>
                      <ul id="drop10" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>7</td>
                  <td>nibh</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle11" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        파트너십
                        <span class="caret"></span>
                      </button>
                      <ul id="drop11" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle12" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        N
                        <span class="caret"></span>
                      </button>
                      <ul id="drop12" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>sagittis</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle13" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        신고
                        <span class="caret"></span>
                      </button>
                      <ul id="drop13" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle14" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        N
                        <span class="caret"></span>
                      </button>
                      <ul id="drop14" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>Fusce</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle15" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        신고
                        <span class="caret"></span>
                      </button>
                      <ul id="drop15" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle16" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        N
                        <span class="caret"></span>
                      </button>
                      <ul id="drop16" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>augue</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle17" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        신고
                        <span class="caret"></span>
                      </button>
                      <ul id="drop17" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">회원</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">파트너십</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">신고</a></li>
                      </ul>
                    </div>
                  </td>
                  <td>서브</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-default dropdown-toggle18" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        Y
                        <span class="caret"></span>
                      </button>
                      <ul id="drop18" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Y</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">N</a></li>
                      </ul>
                    </div>
                  </td>
                </tr>
        
              </tbody>
            </table>

            <script>

              for(let i = 1; i < 19; i++) {
                $(`#drop${i} > li`).on('click', function (){
                  $(`.dropdown-toggle${i}`).text($(this).text());
                })
              }


            
            </script>

            <!-- <nav>
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
            </nav> -->

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