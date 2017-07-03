<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-48" data-genuitec-path="/WebDev/WebContent/_0628/jsp/attribute/firstPage.jsp">
<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
	
	System.out.println("firstPage.jsp : ");
	System.out.println("page : " + pageContext.getAttribute("name"));
	System.out.println("request : " + request.getAttribute("name"));
	System.out.println("session : " + session.getAttribute("name"));
	System.out.println("application : " + application.getAttribute("name"));
	
	request.getRequestDispatcher("secondPage.jsp").forward(request, response);
%>

</body>
</html>