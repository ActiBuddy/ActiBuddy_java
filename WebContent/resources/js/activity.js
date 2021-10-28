$(function(){
  $("#datepicker").datepicker({ 
    minDate: "0", 
    maxDate: "+1Y",
    dateFormat : "yy-mm-dd"
  });
});

$(function() {
   $( "#datepicker" ).datepicker(); 
  });

$(document).ready(function(){ 
  $.datepicker.setDefaults({ 
    changeMonth: true,
    changeYear: true, 
    minDate: '-50y',
    nextText: '다음 달',
    prevText: '이전 달', 
    yearRange: 'c-50:c+20', 
    showButtonPanel: true, 
    currentText: '오늘 날짜', 
    closeText: '닫기', 
    dateFormat: "yy-mm-dd", 
    showMonthAfterYear: true,
    dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
   }); 
  });

  $.datepicker._gotoToday = function(id) {
    $(id).datepicker('setDate', new Date()).datepicker('hide').blur();
};

$(function() {
  $("#slider-range").slider({
      range: true,
      min: 0,
      max: 300000,
      values: [0, 300000],
      slide: function(event, ui) {
          $("#amount2").val(ui.values[0] + "-" + ui.values[1]);
      }
  });
  $("#amount2").val($("#slider-range").slider("values", 0) + " - " + $("#slider-range").slider("values", 1));
});

$(function(){
  $('#check1').click(function(){
      location.href="https://www.naver.com";
  });
});

$(function(){
  $('#btn').click(function(){
    location.href="https://www.google.com";
  });
});

$(function(){
  $('input[name=selectAll]').click(function(){
    $('input[name=sport]').prop('checked',this.checked);
  });
});

$(function(){
  $('input[name=selectAll2]').click(function(){
    $('input[name=ticket]').prop('checked',this.checked);
  });
});

$(function(){
  $('input[name=selectAll3]').click(function(){
    $('input[name=spa]').prop('checked',this.checked);
  });
});

$(function(){
  $('input[name=selectAll4]').click(function(){
    $('input[name=tour]').prop('checked',this.checked);
  });
});

$(function(){
  $('input[name=selectAll5]').click(function(){
    $('input[name=water]').prop('checked',this.checked);
  });
});

$(function(){
  $('#submit').click(function(){
    let value = $("#amount2").val();
    $('#spanPrice').text(value);
  });
});

/*$(function() {
		$("#datepicker").on("propertychange change keyup paste input", function(){
		   let data = $('#datepicker').val();

		   $.ajax({
		    	url : '${ pageContext.servletContext.contextPath }/activity/ajax',
		    	type : 'get',
		    	data : { 
		    		dateValue : data,
		    		locationName : '${location.name}' 
		    	},
		    	success : function(data){
		    		//console.log(data);
		    		if(data != null){
		    			document.getElementById('actiSearch').innerHTML = '';
		    			let str = '';
		    			for(let i = 0; i < data.activityList.length; i++){
		    				
		    			str	 += '<div class="col">'
	 		    		        +'<div class="card shadow-sm">'
	 		    		          + '<a href="/acti/activity/information?actiName=' +data.activityList[i].name+ '"><img src="' + data.activityList[i].image + '"  id="check1" width="100%" height="225"  role="img" ></img>'
	 		    		         + ' <div class="card-body">'
	 		    		        + '<p class="card-text">'
	 		    		        +        data.activityList[i].name
	 		    		       + '</p></a>'
	 		    		      + ' <p id="star">별점 : '         
	 		    		     + '  </p> '
	 		    		    + '   <p>액티비티 마감일 : '+ data.activityList[i].EndDate  + '</p>'
	 		    		   + ' <div class="d-flex justify-content-between align-items-center"> '
	 		    		  + '  <small class="text-muted">₩'+ data.activityList[i].price + '부터</small>'
	 		    		 + '   </div> '
	 		    		+ '    </div> '
	 		    		+ '   </div> ';
		    			}
		    			
		    			document.getElementById('actiSearch').innerHTML = str;
	 		    		
		    		} else {
		    			document.getElementById('actiSearch').innerHTML = '';
		    			
		    			$('#actiSearch').html('<span>검색결과가 없습니다.</span>');
		    		}
		    	},
		    	error : function(error){
		    		console.log(error);
		    	}
		    });
		});
		
		$('#submit').on('click', function() {
			let price = $('#amount2').val();
			
			$.ajax({
		    	url : '${ pageContext.servletContext.contextPath }/activity/ajax',
		    	type : 'get',
		    	data : { 
		    		priceValue : price,
		    		locationName : '${location.name}' 
		    	},
		    	success : function(data){
		    		console.log(data);
		    	},
		    	error : function(error){
		    		console.log(error);
		    	}
		    });
		});
		
		$('#sortBtn').on('change', function(){
			let sort = $('#sortBtn option:selected').val();
			
			$.ajax({
		    	url : '${ pageContext.servletContext.contextPath }/activity/ajax',
		    	type : 'get',
		    	data : { 
		    		sortValue : sort,
		    		locationName : '${location.name}' 
		    	},
		    	success : function(data){
		    		console.log(data);
		    	},
		    	error : function(error){
		    		console.log(error);
		    	}
		    });
		});
	});*/

