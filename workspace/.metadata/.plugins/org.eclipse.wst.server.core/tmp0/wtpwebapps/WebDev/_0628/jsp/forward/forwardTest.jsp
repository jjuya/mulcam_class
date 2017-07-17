<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-59" data-genuitec-path="/WebDev/WebContent/_0628/jsp/forward/forwardTest.jsp">

<%
	int age=Integer.parseInt(request.getParameter("age"));
	
	if(age <= 19) {
%>
	<script data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-59" data-genuitec-path="/WebDev/WebContent/_0628/jsp/forward/forwardTest.jsp">
		alert("19세 미만이므로 입장 불가능");
		history.go(-1);
	</script>
<%
	}
	else {
		request.setAttribute("name", "jjuya");
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("forwardResult.jsp");
		
		dispatcher.forward(request, response);
	}
%>

</body>
</html>