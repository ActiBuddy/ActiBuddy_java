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
      max: 5000000,
      values: [0, 5000000],
      slide: function(event, ui) {
          $("#amount2").val("₩" + ui.values[0] + " - ₩" + ui.values[1]);
      }
  });
  $("#amount2").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
});

$(function(){
  $('#submit').click(function(){
   $('#spanPrice').html($("#amount2").val); 
  });
})

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





