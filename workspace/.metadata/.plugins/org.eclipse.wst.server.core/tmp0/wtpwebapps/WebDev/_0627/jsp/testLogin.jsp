<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-37" data-genuitec-path="/WebDev/WebContent/_0627/jsp/testLogin.jsp">

<% 
	String id = "jjuya";
	String pwd = "1234";
	String name = "박주연";
	
	request.setCharacterEncoding("UTF-8");
	
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))) {
		response.sendRedirect("main.jsp?name=" + URLEncoder.encode(name, "utf-8"));
	}
	else {
%>
	<script data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-37" data-genuitec-path="/WebDev/WebContent/_0627/jsp/testLogin.jsp"> 
	alert('아이디나 비밀번호가 틀렸습니다.'); 
	javascript:history.back();
	</script>
<%		//response.sendRedirect("04_loginForm.jsp");
	}
%>

</body>
</html>