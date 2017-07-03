<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%
	String userID = request.getParameter("userID");
	String userPwd = request.getParameter("userPwd");
	String loginCheck = request.getParameter("loginCheck");
	
	if(loginCheck.equals("user")) {
%>
		<jsp:forward page = "userMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("전고객","UTF-8") %>' name="userName" />
		</jsp:forward>
		
<% 
	} else if(loginCheck.equals("manager")) {
%>
		<jsp:forward page = "managerMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("성관리","UTF-8") %>' name="userName" />
		</jsp:forward>
<% }%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-41" data-genuitec-path="/WebDev/WebContent/_0628/jsp/actionTag/actionTagTest.jsp">

	

</body>
</html>