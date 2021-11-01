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
   
<%--  <script src="${ pageContext.servletContext.contextPath }/resources/js/signup.js"></script>
 --%> <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
 
    <title>main</title>
  </head>

	<script>
	
	$(function(){			
		$('#userId').on('keyup',function(){
		   
			let id = $('#userId').val(); //id값이 "id"인 입력란의 값을 저장
	        
			console.log(id);
			 $.ajax({
	            url:'${ pageContext.servletContext.contextPath }/member/idcheck', //Controller에서 인식할 주소
	            type:'get',
	            data:{userId:id},
	            success:function(result){     //callback
	                
	            	console.log(result);
	            	
					if(result > 0 ){
						$('#idResult1').css('display', 'block').css('color','red');
						$('#idResult2').css('display', 'none');
						$('#userId').focus();

					} else {
						$('#idResult2').css('display', 'block');
						$('#idResult1').css('display', 'none');
					}
	            },
	            error:function(){
 	           }
	        }); 
		});
	});
	
	

</script>

  <body>
    <main class="wrapper2">
      <div>
        <img src="../resources/image/actibuddylogo.png" class="mainlogo" />
      </div>

      <div class="signup2_1">
      
         <form id="joinForm" action="../member/regist" method="post">
         
         <span><h2>아이디</h2></span>
         <input type="text" name="userId" id="userId" placeholder="아이디를 입력해주세요!"/>
         <label id="idResult1" style="display: none">중복된 아이디 입니다. 다른 아이디를 입력해주세요!</label>
         <label id="idResult2" style="display: none">사용가능한 아이디 입니다.</label>
         
         <span><h2>비밀번호</h2></span>
         <input type="password" name="pwd" id="userPwd1" placeholder="비밀번호를 입력해주세요!"/>

         <span><h2>비밀번호 확인</h2></span>
         <input type="password" name="name" id="userPwd2" placeholder="비밀번호를 확인해주세요!"/>
         <label id="pwdREsult"></label>

         <span><h2>이름</h2></span>
         <input type="text" name="userName" id="name" placeholder="이름을 입력해주세요!"/>
         <label id="nameResult"></label>

         <span><h2>성별을 선택 해주세요!</h2></span>
		 <select id="gender" name="gender">
  			<option>선택해주세요</option>
		    <option value="M">남자</option>
  			<option value="F">여자</option>
		</select>


         <span><h2>생년월일</h2></span>
              <input type="number" class="birth" name="birth" id="yy" placeholder="19940922 -> 940922" aria-label="년(4자)" maxlength="6" />
         <label id="birthResult"></label>

         <span><h2>이메일</h2></span>
         <input type="text" name="email" id="email" placeholder="이메일을 입력해주세요!" />
         <label id="emailResult"></label>

         <span><h2>연락처</h2></span>
         <input type="text" name="memPhone" id="phone" placeholder="전화번호를 입력해주세요!"/>
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
      