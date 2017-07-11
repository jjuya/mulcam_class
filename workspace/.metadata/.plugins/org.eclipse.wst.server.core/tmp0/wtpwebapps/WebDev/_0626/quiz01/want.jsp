<%@page import="java.util.InputMismatchException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String want = request.getParameter("want");
	String want_str = want + "가 하고 싶어요.";
	
	try {
		if (!(want.equals("야구") ||
			  want.equals("축구") ||	
			  want.equals("농구"))) {
			throw new InputMismatchException();
		}
			
	} catch(Exception e) {
		response.sendRedirect("form.jsp");
		return;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(want.css);
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-31" data-genuitec-path="/WebDev/WebContent/_0626/quiz01/want.jsp">
<div id="want" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-31" data-genuitec-path="/WebDev/WebContent/_0626/quiz01/want.jsp"><img src="want.png" width="60%" /></div>

<div class="say">
	
	
	<h3><%=want_str %></h3>
</div>
</body>
</html>