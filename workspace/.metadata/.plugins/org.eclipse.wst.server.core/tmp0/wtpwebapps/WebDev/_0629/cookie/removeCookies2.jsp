<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-67" data-genuitec-path="/WebDev/WebContent/_0629/cookie/removeCookies2.jsp">

<%
	Cookie c = new Cookie("id", "");

	c.setMaxAge(0);

	response.addCookie(c);
%>

<a href="getCookies.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-67" data-genuitec-path="/WebDev/WebContent/_0629/cookie/removeCookies2.jsp"> 쿠키 삭제를 확인하려면 클릭하세요.</a>

</body>
</html>