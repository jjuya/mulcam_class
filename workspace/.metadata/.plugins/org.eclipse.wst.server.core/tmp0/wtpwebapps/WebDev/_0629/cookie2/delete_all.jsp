<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-72" data-genuitec-path="/WebDev/WebContent/_0629/cookie2/delete_all.jsp">

	<%
		Cookie c1 = new Cookie("user_id", "");
 		c1.setMaxAge(0);
 		response.addCookie(c1);
 	
 		Cookie c2 = new Cookie("user_name", "");
 		c2.setMaxAge(0);
 		response.addCookie(c2);
 	
 		Cookie c3 = new Cookie("user_level", "");
 		c3.setMaxAge(0);
 		response.addCookie(c3); 	
		
		response.sendRedirect("cookie_status.jsp");
	%>

</body>
</html>