 $(function(){
	         $("#acti_1").on({
	             mouseover: function(){
	                 $('#acti_detail1').css('display', 'block');
	                 $('#acti_detail2').css('display', 'none');
	             },
	             mouseleave: function(){
	                 $('#acti_detail1').css('display','none');
	             }
	         });
	      });
	      $(function(){
	          $("#acti_detail1").on({
	              mouseover: function(){
	                  $('#acti_detail1').css('display', 'block');
	              },
	              mouseleave: function(){
	                  $('#acti_detail1').css('display','none');
	              }
	          });
	      });
	          
	
	      $(function(){
	          $("#acti_2").on({
	              mouseover: function(){
	                  $('#acti_detail2').css('display', 'block');
	                  $('#acti_detail1').css('display', 'none');
	              },
	              mouseleave: function(){
	                  $('#acti_detail2').css('display','none');
	              }
	          });
	      });
	
	      $(function(){
	          $("#acti_detail2").on({
	              mouseover: function(){
	                  $('#acti_detail2').css('display', 'block');
	              },
	              mouseleave: function(){
	                  $('#acti_detail2').css('display','none');
	              }
	          });
	      });