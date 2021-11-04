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
   
<%-- <script src="${ pageContext.servletContext.contextPath }/resources/js/signup.js"></script>
 --%><link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
 
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
						$('#idcheck').attr('checked', 'checked');
						
					} else {
						$('#idResult2').css('display', 'block');
						$('#idResult1').css('display', 'none');
						$('#idcheck').removeAttr('checked');
					}
	            },
	            error:function(){
 	           }
	        }); 
		});
	});
	
	 $(function(){			
		$('#email').on('keyup',function(){
		   
			let id = $('#email').val(); //id값이 "id"인 입력란의 값을 저장
	        
			console.log(id);
			 $.ajax({
	            url:'${ pageContext.servletContext.contextPath }/member/emailcheck', //Controller에서 인식할 주소
	            type:'get',
	            data:{email:id},
	            success:function(result){     //callback
	                
	            	console.log(result);
	            	
					if(result > 0 ){
						$('#email1').css('display', 'block').css('color','red');
						$('#email2').css('display', 'none');
						$('#email').focus();
 						$('#emailcheck1').attr('checked', 'checked');
				} else {
						$('#email2').css('display', 'block');
						$('#email1').css('display', 'none');
 						$('#emailcheck1').removeAttr('checked');
 
					}
	            },
	            error:function(){
 	           }
	        }); 
		});
	});
	
	$(function(){
        $('#name').keyup(function(){
            
          let regExp = /^[가-힣]+$/;

            if(!regExp.test($(this).val())){
                $('#nameResult').html('한글로 입력하세요!').css('color','red')
                $(this).focus().css('background','lightpink');
                $('#namecheck').attr('checked', 'checked');
            }else{
                $('#nameResult').html('맞았습니다~!').css('color','blue')
                $(this).focus().css('background','palegreen');
                $('#namecheck').removeAttr('checked');
            }
        });
        });
       

  $(function(){
    $('#userPwd2').keyup(function(){
     
       if($('#userPwd1').val() != $('#userPwd2').val()){
         $('#pwdREsult').html('비밀번호 일치하지 않음<br><br>').css('color','red');
         $('#pwdcheck').attr('checked', 'checked');
        } else{
          $('#pwdREsult').html('비밀번호 일치함<br><br>').css('color','blue');
          $('#pwdcheck').removeAttr('checked');
        }
      });
   });
     
       $(function(){
          $('.birth').keyup(function(){
          	let filter = /^([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/;
          
          	if(!filter.test($("#yy").val())){
               $('#birthResult').html('생년월일을 확인해주세요').css('color','red');
                $('#birthcheck').attr('checked', 'checked');
             } else{
              	 $('#birthResult').html(' ');
               $('#birthcheck').removeAttr('checked');
              }
            });
            }); 

    $(function(){
    $('#email').keyup(function() {
      let filter = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
          if(filter.test($("#email").val())){
        	
        	  $('#emailResult').html('맞습니다.').css('color','blue');
            $(this).focus().css('background','palegreen');
            $('#emailcheck').removeAttr('checked');

          }else{ 
            $('#emailResult').html('이메일을 확인해주세요').css('color','red');
            $(this).focus().css('background','lightpink');
            $('#emailcheck').attr('checked', 'checked');

          }
        });
      }); 

    $(function(){
    $('#phone').keyup(function() {
      let regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
          if(regPhone.test($("#phone").val())){
            $('#phoneResult').html('good').css('color','red');
            $(this).focus().css('background','palegreen');
            $('#phonecheck').removeAttr('checked');
          }else{ 
            $('#phoneResult').html('번호를  확인해주세요').css('color','red');
            $(this).focus().css('background','lightpink');
            $('#phonecheck').attr('checked', 'checked');
          }
        });
      });
    
    $( document ).ready( function() {
        $('.login_btn').click(function() {
        	if( document.getElementById('idcheck').checked){
        		alert("아이디 창을 확인해주세요!");
				 return false;
        	}else if(document.getElementById('pwdcheck').checked){
        		alert("패스워드 창을 확인해주세요!");
        		 return false;
        	}else if(document.getElementById('namecheck').checked){
        		alert("이름을 확인해주세요!");
        		 return false;
        	}else if(document.getElementById('birthcheck').checked){
        		alert("생일을 확인해주세요!");
        		 return false;
        	}else if(document.getElementById('emailcheck').checked){
        		alert("이메일을 확인해주세요!");
        		 return false;
        	}else if(document.getElementById('emailcheck1').checked){
        		alert("이메일을 확인해주세요!");
        		 return false;
        	}else if(document.getElementById('phonecheck').checked){
        		alert("번호를 확인해주세요!");
        		 return false;
        	} else {
        		alert("성공!");
				 return false;
        	}
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
         <input type="text" name="userId" id="userId" placeholder="아이디를 입력해주세요!"autocomplete="off"/>
         <label id="idResult1" style="display: none">중복된 아이디 입니다. 다른 아이디를 입력해주세요!</label>
         <label id="idResult2" style="display: none">사용가능한 아이디 입니다.</label>
         <input type="checkbox" id="idcheck"/>
         
         <span><h2>비밀번호</h2></span>
         <input type="password" name="pwd" id="userPwd1" placeholder="비밀번호를 입력해주세요!" autocomplete="off"/>

         <span><h2>비밀번호 확인</h2></span>
         <input type="password" name="name" id="userPwd2" placeholder="비밀번호를 확인해주세요!"/>
         <label id="pwdREsult"></label>
         <input type="checkbox" id="pwdcheck"/>

         <span><h2>이름</h2></span>
         <input type="text" name="userName" id="name" placeholder="이름을 입력해주세요!" autocomplete="off"/>
         <label id="nameResult"></label>
         <input type="checkbox" id="namecheck"/>

         <span><h2>성별을 선택 해주세요!</h2></span>
		 <select id="gender" name="gender">
  			<option>선택해주세요</option>
		    <option value="M">남자</option>
  			<option value="F">여자</option>
		</select>

         <span><h2>생년월일</h2></span>
          <input type="number" class="birth" name="birth" id="yy" placeholder="19940922 -> 940922" aria-label="년(4자)" maxlength="6" />
         <label id="birthResult"></label>
         <input type="checkbox" id="birthcheck"/>

         <span><h2>이메일</h2></span>
         <input type="text" name="email" id="email" placeholder="이메일을 입력해주세요!" />
         <label id="emailResult"></label>
         <label id="email1" style="display: none">중복된 이메일 입니다. 다른 아이디를 입력해주세요!</label>
         <label id="email2" style="display: none">사용가능한 이메일 입니다.</label>
         <input type="checkbox" id="emailcheck"/>
         <input type="checkbox" id="emailcheck1"/>
         
         <span><h2>연락처</h2></span>
         <input type="text" name="memPhone" id="phone" placeholder="전화번호를 입력해주세요!"/>
         <label id="phoneResult"></label>
         <input type="checkbox" id="phonecheck"/>
         
         <br><br><br><br>
           <button type="submit" class="login_btn" id="registmember">회원가입하기</button>
         </form>

	

         <div>
         </div>

         
             </div>

    <br><br><br><br>

   <jsp:include page="../common/footer.jsp"/>
    </main>
  </body>
</html>
      