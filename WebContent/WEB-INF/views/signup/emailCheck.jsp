<%@page import="com.actibuddy.common.controller.Emailconfirm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <script src="<%=project%>member/script.js"></script>
 --%>


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function confirmemail(emailconfirm_value, authNum){
    // 입력한 값이 없거나, 인증코드가 일지하지 않을 경우
	if(!emailconfirm_value || emailconfirm_value != authNum){
		alert(emailconfirmerror);
		emailconfirm_value="";
		self.close();
    // 인증코드가 일치하는 경우
	}else if(emailconfirm_value==authNum){
		alert(emailconfirm);
		emailconfirm_value="";
		self.close();
		opener.document.insertform.emailconfirm_value.value=1;
	}
}
</script>

<body>
<%
String email=null;
String email1=request.getParameter("email1");
String email2=request.getParameter("email2");
if(!email1.equals("")){
	if(email2.equals("0")){
		// 직접입력
		email=email1;
	}else{
		email=email1+"@"+email2;
	}
}
// 위에서 작성한 java파일 객체 생성
Emailconfirm emailconfirm = new Emailconfirm();
String authNum=emailconfirm.connectEmail(email);
%>
<form method="post" action="" name="emailcheck">
	<table>
		<tr>
			<th colspan="2">인증번호를 입력하세요.</th>
		</tr>
		<tr>
			<td>
				<input type="text" name="emailconfirm">
			</td>
			<td>
				<input type="button" value="확인" 
                 onclick="confirmemail(emailcheck.emailconfirm.value,
                                                               <%=authNum%>)">
			</td>
		</tr>
	</table>
</form>


</body>
</html>