<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<link href="resources/css/FAQ.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="resources/css/actibuddy.css" rel="stylesheet">
    <script src="${ pageContext.servletContext.contextPath }/resources/js/menubar.js"></script>
    <link href="resources/css/partnership.css" rel="stylesheet" />
    
    
    <title>FAQ</title>
</head>
<body>
      <jsp:include page="../common/menubar.jsp"/>


 <faq_main class="wrapper">
        <div class="faq">
           <img src="resources/image/faq_main.jpeg">
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
         <label class="tab_item" for="coupon">변경</label>
         <input id="point" type="radio" name="tab_item">
         <label class="tab_item" for="point">환불</label>
         <input id="refund" type="radio" name="tab_item">
         <label class="tab_item" for="refund">여행 당일</label>
         <input id="account" type="radio" name="tab_item">
         <label class="tab_item" for="account">계정</label>


         <div class="tab_content" id="booking_content">
           
             <div class="detail">액티비티는 어떻게 예약하나요 ?</div>
             <p class="content">마이 페이지 내의 장바구니 탭에서 예약을 진행하실 수 있습니다.</p>

             <div class="detail">'날짜 미지정 티켓'은 무엇인가요?</div>
             <p class="content">날짜 미지정 티켓은 유효기간 만료 전 상시 사용할 수 있습니다. 액티비티 페이지 또는 해당 액티비티 이용약관에서 유효기간을 확인하세요.</p>

             <div class="detail">예약 후 바우처를 수령하기까지 얼마나 소요되나요?</div>
             <p class="content">예약하신 액티비티에 따라 상이합니다. 액티비티 페이지에서 바로확정 또는 24시간/48시간 이내 확정 여부를 확인하실 수 있습니다. 바로확정 액티비티의 경우, 예약은 5분 이내에 확정됩니다. 명시된 기간 이내에 확정 메일을 받지 못하신 경우, 먼저 스팸 메일함을 확인해주세요. 그래도 메일을 찾을 수 없다면, 액티버디 고객센터로 문의해주세요.</p>
             
             <div class="detail">예약이 취소된 경우, 어떻게 해야하나요?</div>
             <p class="content">카카오 페이 결제의 경우 보통 영업일 기준 5-7일 내에 계좌로 환불됩니다. 위에 명시된 시간이 지나도 환불이 처리되지 않는 경우, 액티버디 고객센터로 연락해주세요.</p>

             <div class="detail">예약내역은 어디에서 확인할 수 있나요?</div>
             <p class="content">마이페이지의 이용내역 탭에서 '다가오는 여행'란에서 찾아보실 수 있습니다.</p>
            
         </div>


         <div class="tab_content" id="payment_content">
           
            <div class="detail">결제는 안전하게 진행되나요?</div>
            <p class="content">액티버디는 제 3자 안전 결제 시스템을 통해 결제를 처리합니다. 결제 정보는 토큰화 및 암호화 처리되어 액티버디의 결제 시스템에 안전하게 보관됩니다.</p>

            <div class="detail">사용할 수 있는 결제 수단은 무엇이 있나요?</div>
            <p class="content">액티버디에서는 현재 카카오페이 결제만을 지원해드리고 있습니다.</p>

            <div class="detail">결제가 실패하면 어떻게 해야 하나요?</div>
            <p class="content">우선, 예약 페이지를 새로고침 후 다시 시도해주세요. 카카오페이 화면 생성 후 15분이 경과하기 전에 결제를 완료해주세요. 아직도 문제가 해결되지 않았다면, 액티버디 고객센터로 연락해주세요.</p>

            <div class="detail">카카오페이는 카드로 결제 가능한가요?</div>
            <p class="content">액티버디에서 카카오페이로 결제할 때는 ‘카카오페이머니’로 가능합니다. 결제 전, 카카오페이머니 잔액이 충분한 지 확인해주세요. 카카오페이머니 잔액이 부족할 경우에는 카카오페이에 연결된 계좌에서 자동 충전되어 결제가 진행됩니다.</p>

            <div class="detail">현금으로 결제 가능하나요?</div>
            <p class="content">죄송합니다. 액티버디는 온라인 플랫폼으로 현금 결제는 지원하지 않습니다.</p>

         </div>


         <div class="tab_content" id="coupon_content">

              <div class="detail">예약은 어떻게 변경할 수 있나요?</div>
             <p class="content">액티버디 고객센터로 문의해주세요.</p>

             <div class="detail">예약 변경 후 알림을 받을 수 있나요?</div>
             <p class="content">변경사항이 확정되면 업데이트된 바우처를 받으실 수 있습니다.</p>

             <div class="detail">예약 인원수를 추가하거나 빼고 싶습니다. 어떻게 해야하나요?</div>
             <p class="content">죄송합니다. 예약 확정 후 인원 추가는 불가합니다. 무료 취소 가능 기간이 남은 환불이 가능한 액티비티인 경우, 예약 취소 후 다시 예약해주세요. 액티비티의 취소 및 환불 규정을 확인해주세요.</p>

          <!--    <div class="detail">예약은 어떻게 하나요?</div>
             <p class="content">마이 페이지 확인 부탁</p>

             <div class="detail">예약 후 인원 변경이 가능한가요?</div>
             <p class="content">마이 페이지 확인 부탁</p> -->

         </div>

         <div class="tab_content" id="point_content">
           
              <div class="detail">환불 신청을 했는데 아직 환불받지 못했습니다. 어떻게 해야 하나요?</div>
             <p class="content">카카오페이를 통해 결제를 진행하신 경우, 즉시 환불 처리됩니다. 보통 영업일 기준 5-7일 이내에 계좌로 환불되며, 명시된 시간이 지나도 환불이 처리되지 않는 경우 액티버디 고객센터에 문의해주세요."</p>

             <div class="detail">액티비티에 지각할 경우 어떻게 해야 하나요?</div>
             <p class="content">죄송합니다. 지각인 경우 운영업체는 기다리지 않습니다. 액티비티에 정시에 도착하시거나 조금 일찍 도착하세요. 예기치 않은 지연이 발생하는 경우, 담당처에 연락하시기 바랍니다.</p>

             <div class="detail">날씨 또는 예기치 못한 상황으로 액티비티가 취소된 경우 어떻게 해야 하나요?</div>
             <p class="content">운영업체가 액티비티를 취소한 경우 예약이 취소된 후, 환불됩니다. 운영업체가 취소하지 않은 경우, 액티버디 고객센터로 문의해주세요.</p>

             <div class="detail">액티비티 당일 교통사고가 난 경우, 어떻게 해야 하나요?</div>
             <p class="content">당일 교통사고 또는 기타 예기치 못한 상황으로 인해 참여가 불가한 경우, 즉시 액티버디 고객센터에 연락하시기 바랍니다.</p>

             <!-- <div class="detail">예약 후 인원 변경이 가능한가요?</div>
             <p class="content">마이 페이지 확인 부탁</p> -->
             
         </div>

         <div class="tab_content" id="refund_content">
           
            <div class="detail">액티비티에 참여할 장소까지 어떻게 가야 하나요?</div>
            <p class="content">해당 액티비티의 정보 화면에서 지도를 조회해보실 수 있습니다.</p>

            <div class="detail">서비스 제공 업체에 연락할 수 없으면 어떻게 해야 하나요?</div>
            <p class="content">액티버디의 고객센터에 문의해주세요.</p>

            <div class="detail">출력된 바우처가 필요한가요?</div>
            <p class="content">예약하신 액티비티 참여시 모바일 바우처를 제시하시면 됩니다. </p>

            <div class="detail">운영업체 연락처는 어디에서 확인하나요?</div>
            <p class="content">예약 확정 후, 이메일로 발송된 바우처에서 확인하실 수 있습니다.</p>

            <!-- <div class="detail">예약 후 인원 변경이 가능한가요?</div>
            <p class="content">마이 페이지 확인 부탁</p> -->
            
         </div>

         <div class="tab_content" id="account_content">
         
            <div class="detail">계정은 어떻게 생성하나요?</div>
            <p class="content">이메일 주소 또는 전화번호를 이용해 무료 회원가입이 가능합니다.</p>
           
            <div class="detail">계정이 비활성화되었습니다. 왜 그런가요?</div>
            <p class="content">다양한 이유가 있을 수 있습니다. 액티버디 고객센터로 문의해주세요.</p>

            <div class="detail">개인정보는 어떻게 변경할 수 있나요?</div>
            <p class="content">개인정보 변경 및 삭제는 마이페이지에서 상시 가능합니다.</p>

            <div class="detail">액티버디 계정은 어떻게 삭제하나요?</div>
            <p class="content">마이 페이지 내의 회원 탈퇴란에서 상시 가능합니다.</p>

            <div class="detail">비밀번호를 잊어버렸습니다. 어떻게 해야 하나요?</div>
            <p class="content">1. 우측 상단의 '로그인'을 선택하세요. <br>
                               2. 로그인 페이지에서 '비밀번호를 잊으셨나요?'를 선택하세요. <br>
                               3. 이메일 주소를 입력한 다음, 이메일 수신함을 확인하셔서 액티버디에서 발송된 비밀번호 재설정 방법을 따라주세요. 전화번호를 이용해 인증번호를 입력하고 비밀번호를 재설정할 수도 있습니다.</p>

            
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
                <img style="width: 20%; height: 20%;" src="${ pageContext.servletContext.contextPath }/resources/image/db3e6c6bf8d127a7d6d90bfc9b22fea26036c342_m.gif">
                </div>
                <div class="gif">
                <p>
            010-1234-5678</p>
            </div>
        </div>
        </div>
        	
    <form id="faq" action="${ pageContext.servletContext.contextPath }/faq/commonquestion" method="post">   	
	<div class="question">
      <textarea cols="50" rows="1" placeholder="글제목" name="queTitle"></textarea>
      <textarea cols="50" rows="1" placeholder="이메일" name="queEmail"></textarea>
      <textarea 
        cols="50"
        rows="10"
        placeholder="내용"
        style="height: 200px"
        name="queCon"
      >
      </textarea>
      <textarea style="display: none;" name="userId">${ sessionScope.loginMember.userId }</textarea>

      <button type="submit" value="submit">문의하기</button>
    </div>
    </form>


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