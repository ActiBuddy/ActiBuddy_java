<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/actibuddy.css" rel="stylesheet" />
    <link href="${ pageContext.servletContext.contextPath }/resources/css/pay2.css" rel="stylesheet">
    <!--  카카오 페이 -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


    <title>결제 화면</title>
  </head>
  <body> 
    <jsp:include page="../common/menubar.jsp"/>



<!---------------------------------메인------------------------------------------------->

<main>

    <br><br><br>

    <div id="top">
        <div id="circle1">
            <h4 id="info">상품 선택</h4>
        </div>
            <div id="dott1"></div>
            <div id="dott1"></div>
            <div id="dott1"></div>
        <div id="circle2">
            <h4 id="info">예약 정보 입력</h4>
        </div >
            <div id="dott2"></div>
            <div id="dott2"></div>
            <div id="dott2"></div>
        <div id="circle3">
            <h4 id="info">결제 진행</h4>
        </div>
    </div>

    <div id="middle"> <br>
        <h2 id="progress"> 결제 진행하기 </h2> <hr>
        <h3 id="warning">모든 신용카드 정보는 암호화되어 보호되며 안전하게 처리됩니다.</h3>
        <br> <br> <br> <br>

        <!-- <div id="kakao-pay"> -->

<script>
  

   /*  var IMP = window.IMP; 
    IMP.init(' imp49303046 '); 
    IMP.request_pay({
    	pg : "kakaopay", 
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '결제',
        amount : 주문개수,
        buyer_email : '구매자 이메일',
        buyer_name : '구매자 이름',
        buyer_tel : '구매자 번호',
        buyer_addr : '구매자 주소',
        buyer_postcode : '구매자 주소',
        m_redirect_url : 'redirect url'
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '결제가 완료되었습니다.';
            location.href='결제완료후 갈 url';
        } else {
            var msg = '결제에 실패하였습니다.';
            rsp.error_msg;
            
        }
    }); */
    
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp49303046'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'KH Books 도서 결제',
            amount : 20000,
            buyer_email : 'tnsvy2004@naver.com',
            buyer_name : '홍길동',
            buyer_tel : '010-1234-5678',
            buyer_addr : '평양시 냉면읍 갈비로',
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        alert(msg);
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
                location.href='<%=request.getContextPath()%>/order/paySuccess?msg='+msg;
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="<%=request.getContextPath()%>/order/payFail";
                alert(msg);
            }
        });
        
    });


    </script>
            <%-- <img id="img" src="${ pageContext.servletContext.contextPath }/resources/image/pay_kakaopay.png"/> --%>
       <!--  </div> -->

        <br><br><hr><br>

        <h5 id="terms">"바로 결제" 버튼을 클릭하면 이용약관과 취소정책을 확인하고 동의한 것으로 간주됩니다. 
            <a href="../faq/Privacy_Policy.html">이용약관</a> & <a href="../faq/FAQ_main.html">취소 정책</a></h5>

        <a id="a" href="../pay/pay3.html">
            <input id="next" type="submit" value="바로 결제">
        </a>

    </div>

</main>



<!---------------------------------하단바-------------------------------------->

    <jsp:include page="../common/footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
