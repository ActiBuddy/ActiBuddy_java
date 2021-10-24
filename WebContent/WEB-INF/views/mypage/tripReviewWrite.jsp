<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>trip-review-write</title>
    <link rel="stylesheet" href="../../resources/css/actibuddy.css">
    <link rel="stylesheet" href="../../resources/css/mypage.css">

</head>

<body>


    <nav class="navbar">
        <ul class="navbar_menu">
            <a href="../main/main.html"><img src="../../resources/image/actibuddylogo.png" class="nav_logo"></a>
            <li class="dropbox"><a href="../activity/activity.html">액티비티</a></li>
            <li class="dropbox"><a href="../Mate/matemain.html">메이팅</a></li>
            <li><input type="text" placeholder="Search"></li>
            <li><button type="button" onclick="location.href='../activity/searchActivity.html'">Submit</button></li>
        </ul>

        <ul class="navbar_link">
            <li><a href="../FAQ/FAQ_main.html">FAQ</a></li>
            <li><a href="../singup/signup.html">회원가입</a></li>
            <li><button type="button" class="login_btn" onclick="location.href='../login/login.html'">로그인</button></li>
        </ul>
    </nav>


    <div class="logo" >
    
        <img src="../../resources/image/mypage/mainlogo.png" width="400px" height="350px" />
        
    </div>

    <hr>

  
	<c:if test="${ !empty sessionScope.loginMember }">
		<div class="page-text">

        	<h2><c:out value="${ sessionScope.loginMember.userName }"/>님의 마이페이지</h2>
        	
		</div>
	</c:if>

    <div class="body-all">
    
        
        <div class="side-all">
            
    
            <div class="side-1">
                <br><br><br>
                <img src="../resources/image/profile.png" width="100px" height="100px"/>
                
                <c:if test="${ !empty sessionScope.loginMember }">
		
        			<h4 align="center"><c:out value="${ sessionScope.loginMember.userName }"/></h4>

				</c:if>
                
                
                <hr>
                <br>

                <a href="../mypage/memQuit.html" id="quit">회원탈퇴</a>
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


        
        <div class="center-all">

            <div class="t-center-1">
                <div class="t-center-text">

                    <h5>이용 후기 작성</h5>
                    <hr>
                    <h2>제목 : </h2>
                    <h3>후기 상품 : [제주] 차귀도 배낚시 체험</h3>
                    <br>
                    <h5> 날짜 : </h5>
                    <h5>수량 : </h5>
                    <hr>
                    <h2> 별점을 매겨주세요</h2>
                    <h3>액티비티는 어떠셨나요?</h3>
    
    
                        <button class="t-buttons">매우만족</button><button class="t-buttons">만족</button>
                        <button class="t-buttons">보통</button><button class="t-buttons">불만족</button>
                        <button class="t-buttons">매우불만족</button>
    
                    <hr>
                    <h5>후기 내용</h5>
                    <hr>
                    <textarea></textarea>

                    
                    <!-- <script>
                        function imgSize(which){
                           var width = eval("document."+which+".width");
                           var height = eval("document."+which+".height");
                           var temp = 0; 
                           var max_width= 50;   // 이미지의 가로 최대 크기    
                           var max_height = 50; // 이미지의 세로 최대 크기
                           
                           if ( width > max_width ) {  // 이미지가 600보다 크다면 너비를 600으로 맞우고 비율에 맞춰 세로값을 변경한다.      
                               height = height/(width / max_width);
                               eval("document."+which+".width = max_width");     
                               eval("document."+which+".height = height");
                               width = max_width;     
                           }
                           
                           if( height > max_height ) {
                               width = width/(height / max_height);
                               eval(document.getElementById(which).width = width);
                               eval(document.getElementById(which).height = max_height);
                            }
                        }
                    </script> -->

                    <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" multiple/> 
                    <div id="image_container"></div>

                    <script> 
                    
                    function setThumbnail(event) { 
                        for (var image of event.target.files) { 
                            var reader = new FileReader(); 
                            
                            reader.onload = function(event) { 
                                var img = document.createElement("img"); 
                                img.setAttribute("src", event.target.result); 
                                document.querySelector("div#image_container").appendChild(img); 
                                }; 
                                
                                console.log(image);
                                 reader.readAsDataURL(image);
                        } 
                    } 

                   
                                
                    </script>
                    




                    <button class="t-center-btn">후기 작성하기</button>

                </div>




    
            </div>
            
        </div>
    </div>


    
    



<!-- 하단 바 -->
<footer>
    <div class="footer">
        <span></span>

        <ul>2021 액티버디</ul>
        <ul> 회사소개
            <li><a href="../introduce/introduce.html">액티버디소개</a></li>
            <li><a href="../mypage/mypage.html">마이페이지</a></li>

            </ul>

        <ul> 파트너십
            <li><a href="../partnership/partnership.html">파트너십</a></li>
        </ul>

        <ul> 이용약관
            <li><a href="../FAQ/Privacy_Policy.html">약관</a></li>
        </ul>

        <ul>결제수단
            <li><a href="#">카카오페이</a></li>
        </ul>
        <span></span>
        <span></span>
    </div>
</footer>


</body>
</html>