<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="../../resources/css/signup2.css" rel="stylesheet" />
    <link href="../../resources/css/actibuddy.css" rel="stylesheet" />
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
       
      // 아이디 정의
    //  $(function(){
    //       $('#id').keyup(function(){
    //           let regExp = /^[가-힣]+$/;

    //           if(!regExp.test($(this).val())){
    //               $('#idResult').html('한글로 입력하세요!').css('color','red')
    //               $(this).focus().css('background','lightpink');
    //           }else{
    //               $('#idResult').html('맞았습니다~!').css('color','blue')
    //               $(this).focus().css('background','palegreen');
    //           }
    //       });
    //       });
         
      // 이름 정의
     $(function(){
          $('#name').keyup(function(){
              
            let regExp = /^[가-힣]+$/;

              if(!regExp.test($(this).val())){
                  $('#nameResult').html('한글로 입력하세요!').css('color','red')
                  $(this).focus().css('background','lightpink');
              }else{
                  $('#nameResult').html('맞았습니다~!').css('color','blue')
                  $(this).focus().css('background','palegreen');
              }
          });
          });
         

    $(function(){
      $('#userPwd2').keyup(function(){
       
         if($('#userPwd1').val() != $('#userPwd2').val()){
           $('#pwdREsult').html('비밀번호 일치하지 않음<br><br>').css('color','red');
          } else{
            $('#pwdREsult').html('비밀번호 일치함<br><br>').css('color','blue');
          }
        });
     });
       
       $(function(){
        $('.birth').keyup(function(){
           if( ($('#yy').val() > 2022 || $('#yy').val() < 1900 || $('#yy').val() < null) ||
               ($('#mm').val() > 13 || $('#mm').val() < 1) ||
               ($('#dd').val() > 31 || $('#dd').val() < 1 ||  $('#dd').val() < null) ){

             $('#birthResult').html('생년월일을 확인해주세요').css('color','red');
            } else{
              $('#birthResult').html('나 ');
            }
          });
        });

      $(function(){
      $('#email').keyup(function() {
        let filter = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
            if(filter.test($("#email").val())){
              $('#emailResult').html('good').css('color','red');
              $(this).focus().css('background','palegreen');
            }else{ 
              $('#emailResult').html('이메일을 확인해주세요').css('color','red');
              $(this).focus().css('background','lightpink');
            }
          });
        });

      $(function(){
      $('#phone').keyup(function() {
        let regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
            if(regPhone.test($("#phone").val())){
              $('#phoneResult').html('good').css('color','red');
              $(this).focus().css('background','palegreen');
            }else{ 
              $('#phoneResult').html('번호를  확인해주세요').css('color','red');
              $(this).focus().css('background','lightpink');
            }
          });
        });
  
</script>


    <title>main</title>
  </head>
  <body>
    <main class="wrapper">
      <div>
        <img src="../../resources/image/actibuddylogo.png" class="mainlogo" />
      </div>

      <div class="signup1">
        <form>

         <span><h2>아이디</h2></span>
         <input type="text" name="id" id="id"/>
         <label id="idResult"></label>

         <span><h2>비밀번호</h2></span>
         <input type="password" name="name" id="userPwd1"/>

         <span><h2>비밀번호 확인</h2></span>
         <input type="password" name="name" id="userPwd2"/>
         <label id="pwdREsult"></label>

         <span><h2>이름</h2></span>
         <input type="text" name="name" id="name"/>
         <label id="nameResult"></label>


         <span><h2>생년월일</h2></span>
         <div class="bir_wrap">
             <div class="bir_yy">
              <input type="text" class="birth" id="yy" placeholder="년(4자)" aria-label="년(4자)" maxlength="4">
             </div>
             
            <div class="bir_mm">
              <input type="text" class="birth" id="mm" placeholder="월" aria-label="년(4자)" maxlength="2">
             </div>
          <div class="bir_dd">
            <input type="text" class="birth" id="dd" placeholder="일" aria-label="일" maxlength="2">
          </div>
         </div>
         <label id="birthResult"></label>


         <span><h2>이메일</h2></span>
         <input type="text" name="email" id="email"/>
         <label id="emailResult"></label>

         <span><h2>연락처</h2></span>
         <input type="text" name="phone" id="phone"/>
         <label id="phoneResult"></label>

         <br><br><br><br>
         <div>
           <button class="login_btn">회원가입하기</button>
         </div>

         </form>
    </div>

    <br><br><br><br>




      
    </div>
      </div>
    </form>

      <footer>
        <div class="footer">
          <span></span>

          <ul>
            2021 액티버디
          </ul>
          <ul>
            회사소개
            <li><a href="../introduce/introduce.html">액티버디소개</a></li>
            <li><a href="../mypage/mypage.html">마이페이지</a></li>
          </ul>

          <ul>
            파트너십
            <li><a href="../partnership/partnership.html">파트너십</a></li>
          </ul>

          <ul>
            이용약관
            <li><a href="../FAQ/Privacy_Policy.html">약관</a></li>
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
      