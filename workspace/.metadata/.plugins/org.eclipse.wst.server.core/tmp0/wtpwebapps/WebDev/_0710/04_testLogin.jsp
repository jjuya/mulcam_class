<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-102" data-genuitec-path="/WebDev/WebContent/_0710/04_testLogin.jsp">

	당신이 입력한 정보 입니다. (고전적 방식) <hr data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-102" data-genuitec-path="/WebDev/WebContent/_0710/04_testLogin.jsp">
	아이디 : <%=request.getParameter("id") %> <br>
	비밀번호 : <%=request.getParameter("pwd") %> <br><br>
	
	당신이 입력한 정보 입니다. (EL 방식) <hr>
	아이디 : ${param.id}<br>
	비밀번호 : ${param["pwd"]}<br>
	
</body>
</html>