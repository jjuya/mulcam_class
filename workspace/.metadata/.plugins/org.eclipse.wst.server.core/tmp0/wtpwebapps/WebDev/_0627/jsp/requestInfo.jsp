<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-36" data-genuitec-path="/WebDev/WebContent/_0627/jsp/requestInfo.jsp">
컨텍스트 패스 	: <%=request.getContextPath() %> <br data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-36" data-genuitec-path="/WebDev/WebContent/_0627/jsp/requestInfo.jsp">
요청 방식 		: <%=request.getMethod() %> <br>
요청한 URL 		: <%=request.getRequestURL() %> <br>
요청한 URI 		: <%=request.getRequestURI() %> <br>
서버의 이름 	: <%=request.getServerName() %> <br>
프로토콜 		: <%=request.getProtocol() %> <br>
</body>
</html>