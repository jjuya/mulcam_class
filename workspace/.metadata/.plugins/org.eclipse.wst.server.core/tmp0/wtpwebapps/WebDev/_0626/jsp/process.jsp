<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	public String commentAge(int age) {
		switch(age/10) {
		case 0:
		case 1:
			return "묘령";
		case 2:
			return "약관";
		case 3:
			return "이립";
		case 4:
			return "불혹";
		case 5:
			return "지천명";
		case 6:
			return "이순";
		default:
			return "종심";
		}
	}
%>  
<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-28" data-genuitec-path="/WebDev/WebContent/_0626/jsp/process.jsp">
	안녕하세요, <%= name %>님 <br  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-28" data-genuitec-path="/WebDev/WebContent/_0626/jsp/process.jsp"/>
	나이 : <%=age %>(<%= commentAge(age) %>)
</body>
</html>