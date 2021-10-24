<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../resources/css/FAQ.css" rel="stylesheet">
    <link href="../../resources/css/actibuddy.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>Document</title>
</head>
<body>
      <jsp:include page="../common/menubar.jsp"/>


 <faq_main class="wrapper">
        <div class="faq">
           <img src="../../resources/image/faq_main.jpeg">
        </div>    


         <div class="faq">
             <p> 자주묻는 질문 best </p>
         </div>

     <div class="tabs">
         <input id="booking" type="radio" name="tab_item" checked>
         <label class="tab_item" for="booking">예약</label>
         <input id="payment" type="radio" name="tab_item">
         <label class="tab_item" for="payment">결제</label>
         <input id="coupon" type="radio" name="tab_item">
         <label class="tab_item" for="coupon">쿠폰</label>
         <input id="point" type="radio" name="tab_item">
         <label class="tab_item" for="point">포인트</label>
         <input id="refund" type="radio" name="tab_item">
         <label class="tab_item" for="refund">환불</label>
         <input id="account" type="radio" name="tab_item">
         <label class="tab_item" for="account">계정</label>


         <div class="tab_content" id="booking_content">
           
             <div class="detail">예약 완료후 바우처 사용은 어떻게 하나요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">내 예약 진행상황을 보려면?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약 후 바우처를 받지 못했어요.</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약은 어떻게 하나요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약 후 인원 변경이 가능한가요?</div>
             <p class="content">마이 페이지 확인 부탁</p>
            
         </div>


         <div class="tab_content" id="payment_content">
           
            <div class="detail">예약 완료후 바우처 사용은 어떻게 하나요?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">내 예약 진행상황을 보려면?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약 후 바우처를 받지 못했어요.</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약은 어떻게 하나요?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약 후 인원 변경이 가능한가요?</div>
            <p class="content">마이 페이지 확인 부탁</p>

         </div>


         <div class="tab_content" id="coupon_content">

              <div class="detail">예약 완료후 바우처 사용은 어떻게 하나요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">내 예약 진행상황을 보려면?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약 후 바우처를 받지 못했어요.</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약은 어떻게 하나요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약 후 인원 변경이 가능한가요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

         </div>

         <div class="tab_content" id="point_content">
           
              <div class="detail">예약 완료후 바우처 사용은 어떻게 하나요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">내 예약 진행상황을 보려면?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약 후 바우처를 받지 못했어요.</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약은 어떻게 하나요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약 후 인원 변경이 가능한가요?</div>
             <p class="content">마이 페이지 확인 부탁</p>
             
         </div>

         <div class="tab_content" id="refund_content">
           
            <div class="detail">예약 완료후 바우처 사용은 어떻게 하나요?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">내 예약 진행상황을 보려면?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약 후 바우처를 받지 못했어요.</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약은 어떻게 하나요?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약 후 인원 변경이 가능한가요?</div>
            <p class="content">마이 페이지 확인 부탁</p>
            
         </div>

         <div class="tab_content" id="account_content">
           
            <div class="detail">예약 완료후 바우처 사용은 어떻게 하나요?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">내 예약 진행상황을 보려면?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약 후 바우처를 받지 못했어요.</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약은 어떻게 하나요?</div>
            <p class="content">마이 페이지 확인 부탁</p>

            <div class="detail">예약 후 인원 변경이 가능한가요?</div>
            <p class="content">마이 페이지 확인 부탁</p>
            
         </div>
         
        </div>


        <div class="faq" style="text-align: center;">
            <p> 더 많은 정보를 알고 싶으시다면? </p>
            <h2 style="font-weight: lighter; margin-top: 50px;">액티버디 컨시지어팀이 빠르고 친절하게 답변해드려요!</h1>
            <h4 style="margin-top: 50px;">유선상담 / 카카오톡 플러스 친구</h3>
            <h4>10:00 ~ 18:00 (GMT +9)</h3>
            <h4>(주말 및 공휴일 제외)</h3>
           <div>
            <div class="gif">
                <img src="../../resources/image/db3e6c6bf8d127a7d6d90bfc9b22fea26036c342_m.gif">
                </div>
                <div class="gif">
                <p>
            010-1234-5678</p>
            </div>
        </div>
        </div>


        <script>
            $(function(){
                $('.content').slideUp()
    
                $('.detail').click(function(){
                    $(this).next('p').slideToggle();
                });
            });
        </script>
</faq_main>
   
   <jsp:include page="../common/footer.jsp"/>
</body>
</html>