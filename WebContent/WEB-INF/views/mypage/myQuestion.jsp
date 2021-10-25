<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>my-questions</title>
    <link rel="stylesheet" href="../../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../../resources/css/mypage.css">

</head>

<body>


      <jsp:include page="../common/menubar.jsp"/>


    <div class="logo" >
    
        <img src="../../resources/image/mypage/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>
    
    <div class="page-text">
        <h2>해씨초코볼  님의 마이페이지</h2>
    </div>

    <div class="body-all">
    
        
        <div class="side-all">
            
    
            <div class="side-1">
                <br><br><br>
                <img src="../../resources/image/mypage/profile.png" width="100px" height="100px"/>
                <h4>해씨초코볼</h4>
                
                <hr>
                <br>
                <a href="../main/main.html" onclick="alert('로그아웃하시겠습니까?')">로그아웃</a>
                <a href="" id="quit">회원탈퇴</a>
    
                
            </div>
            <div class="side-2">
                
                <br><br>
                <div class="menu">
                    <a href="../mypage/tripList.html">여행 내역</a><br><br><br>
                    <a href="../mypage/review.html">이용 후기</a><br><br><br>
                    <a href="../mypage/cart.html">장바구니</a><br><br><br>
                    <a href="../mypage/mate-list.html">메이트 내역</a><br><br><br> 
                    <a href="../mypage/my-question.html">문의 사항</a><br><br>
                </div>
            </div>

            
        </div>
        
        <div class="a-center-all">

        
            <div class="a-center-1">
                
                <div class="c-center-text">

                    <h3>나의 문의사항</h3>
                    <hr>

                    <h3>제목 : </h3>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <br> <br> <br>
                    <h4>문의 처리 상황 : </h4><br>

                    <button id="l-list">답변 보기</button>
                    <div class="answer">
                        <br>
                        <p>
                            문의하신 문의의 답변입니다.
                        </p>

                    </div>
                    <script>
                        $(function(){
                            $('.answer').slideUp()
                
                            $('#l-list').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script>

                    <hr>

                    <!-- <h3>제목 : </h3>
                    <button id="move" type="button" onclick="location.href=''">상세보기 ></button>
                    <br> <br> <br>
                    <h4>문의 처리 상황 : </h4><br>

                    <button id="l-list">답변 보기</button>
                    <div class="answer">
                        <br>
                        <p>
                            문의하신 문의의 답변입니다.
                        </p>

                    </div>
                    <script>
                        $(function(){
                            $('.answer').slideUp()
                
                            $('#l-list').click(function(){
                                $(this).next('div').slideToggle();
                            });
                        });
                    </script> -->

                    


                </div>


    
            </div>
           
        </div>

    </div>



<!-- 하단 바 -->
   <jsp:include page="../common/footer.jsp"/>


</body>
</html>