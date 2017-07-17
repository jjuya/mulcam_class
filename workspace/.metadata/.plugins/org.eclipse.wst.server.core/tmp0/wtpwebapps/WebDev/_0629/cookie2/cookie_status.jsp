<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-71" data-genuitec-path="/WebDev/WebContent/_0629/cookie2/cookie_status.jsp">
	<a href="cookieForm.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-71" data-genuitec-path="/WebDev/WebContent/_0629/cookie2/cookie_status.jsp"> 쿠키 생성 </a> <br>
	
	<a href="delete_ID.jsp">ID 삭제</a> <br>
	<a href="delete_name.jsp">이름 삭제</a> <br>
	<a href="delete_level.jsp">레벨 삭제</a> <br>
	<a href="delete_all.jsp">전체 삭제</a> <br>

<%
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(Cookie c : cookies) {
			if(!c.getName().equals("JSESSIONID")) {
				out.println("쿠키 이름 :" + c.getName() + "<br>");
				out.println("쿠키 값 :" + URLDecoder.decode(c.getValue()) + "<br>");
				out.println("<hr>");
			}
		}
	}
%>

</body>
</html>