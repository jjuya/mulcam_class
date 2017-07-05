<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-26" data-genuitec-path="/WebDev/WebContent/_0626/jsp/importTest.jsp">

<% 
	Calendar c = Calendar.getInstance();
	SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
	SimpleDateFormat now = new SimpleDateFormat("HH시 mm분 ss초");
%>

	오늘은 <%=today.format(c.getTime()) %> 입니다. <br  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-26" data-genuitec-path="/WebDev/WebContent/_0626/jsp/importTest.jsp"/>
	현재 시간은 <%=now.format(c.getTime()) %>

</body>
</html>