<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

   <link  rel="stylesheet" type="text/css" href="../resources/css/login.css"/>
  <link  rel="stylesheet" type="text/css" href="../resources/css/signup.css"/>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
 <script src="${ pageContext.servletContext.contextPath }/resources/js/signup.js"></script>
 <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
 
    <title>main</title>
  </head>

<script>
	
	/*  $(function(){
		 $('.login_id').click(function(){
		  if(!$('input[name=userId]').val() == ""){
			  alert("아이디 썼");
		 } else {
			 alert("아이디 써");
		 
		 }

		 }),
			 event.preventDefault();
	/*  });/ */

		 
		 /* $(function(){ */
		   $('.login_id').click(function(){
		  if(!$('input[name=pwd]').val() == "")
		  {
		  } else {
			 alert("비번 써");
		 }
		 })
		 });
		  */
		 
		/*   $('.login_btn').click(function(){
			  if( !$('input[name=userName]').val() == ""){
			 } else {
				 alert("이름 써");
			 }
		 })
		 
	});  */
	
	/* <script>
	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
		$("#userId").blur(function() {
			// id = "id_reg" / name = "userId"
			var user_id = $('#userId').val();
			
			$.ajax({
				url : 'acti/member/idcheck' 
				type : 'POST',
				data : {userId: userId},
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1) {
							// 1 : 아이디가 중복되는 문구
							$("#idResult").text("사용중인 아이디입니다 :p");
							$("#idResult").css("color", "red");
						} else {
							
							if(idJ.test(user_id)){
								// 0 : 아이디 길이 / 문자열 검사
								$("#idResult").text("");
					
							} else if(user_id == ""){
								
								$('#idResult').text('아이디를 입력해주세요 :)');
								$('#idResult').css('color', 'red');
								
							} else {
								
								$('#idResult').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
								$('#idResult').css('color', 'red');
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			}); */
	</script>
			  
	  

</script>

  <body>
    <main class="wrapper2">
      <div>
        <img src="../resources/image/actibuddylogo.png" class="mainlogo" />
      </div>

      <div class="signup2_1">
      
      
		<form id="joinForm" action="../member/idcheck" method="post">
         <span><h2>아이디</h2></span>
         <input type="text" name="userId" id="userId"/>
         <input type="hidden" name="idchk" value="0"/>
         <label id="idResult"></label>
      <button class="login_id">아이디체크</button>
         </form>
         
        <form id="joinForm" action="../member/regist" method="post">
         <span><h2>비밀번호</h2></span>
         <input type="password" name="pwd" id="userPwd1"/>

         <span><h2>비밀번호 확인</h2></span>
         <input type="password" name="name" id="userPwd2" />
         <label id="pwdREsult"></label>

         <span><h2>이름</h2></span>
         <input type="text" name="userName" id="name"/>
         <label id="nameResult"></label>

         <span><h2>생년월일</h2></span>
              <input type="number" class="birth" name="birth" id="yy" placeholder="19940922 -> 940922" aria-label="년(4자)" maxlength="6" />
         <label id="birthResult"></label>

         <span><h2>이메일</h2></span>
         <input type="text" name="email" id="email" />
         <label id="emailResult"></label>

         <span><h2>연락처</h2></span>
         <input type="text" name="memPhone" id="phone"/>
         <label id="phoneResult"></label>

         <br><br><br><br>
         <div>
           <button type="submit" class="login_btn">회원가입하기</button>
         </div>

         </form>
         
             </div>

    <br><br><br><br>

   <jsp:include page="../common/footer.jsp"/>
    </main>
  </body>
</html>
      