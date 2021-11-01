 
 
 
 
 
 
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
       
      /*  $(function(){
        $('.birth').keyup(function(){
           if( ($('#yy').val() > 2022 || $('#yy').val() < 1900 || $('#yy').val() < null) ||
               ($('#mm').val() > 13 || $('#mm').val() < 1) ||
               ($('#dd').val() > 31 || $('#dd').val() < 1 ||  $('#dd').val() < null) ){

             $('#birthResult').html('생년월일을 확인해주세요').css('color','red');
            } else{
            	 $('#birthResult').html('맞습니다 ');
            }
          });
        }); */
        
        $(function(){
            $('.birth').keyup(function(){
            	let filter = /([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))/
            
            	if(!filter.test($("#yy").val())){

                 $('#birthResult').html('생년월일을 확인해주세요').css('color','red');

                } else{
                	 $('#birthResult').html(' ');
                	 
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

	
      
      
   