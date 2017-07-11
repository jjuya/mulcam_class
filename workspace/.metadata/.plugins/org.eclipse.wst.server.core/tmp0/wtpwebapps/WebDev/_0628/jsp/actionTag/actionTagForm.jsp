<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-45" data-genuitec-path="/WebDev/WebContent/_0628/jsp/actionTag/actionTagForm.jsp">

<form action="actionTagTest.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-45" data-genuitec-path="/WebDev/WebContent/_0628/jsp/actionTag/actionTagForm.jsp">

	아이디 : <input type="text" name="userID"> <br>
	암 &nbsp 호 : <input type="password" name="userPwd"> <br>
	
	<input type="radio" name="loginCheck" value="user" checked="checked"> 사용자
	<input type="radio" name="loginCheck" value="manager" > 관리자 <br>
	
	<input type="submit" value="Login">

</form>

</body>
</html>