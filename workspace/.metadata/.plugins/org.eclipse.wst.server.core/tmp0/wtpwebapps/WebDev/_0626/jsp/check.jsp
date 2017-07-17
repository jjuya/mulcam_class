<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 70.12.50.73 --%>

<%!
	int cnt = 1;


	public String checkAddr(String ipAdd) {
	
		String str;
		
		if((cnt % 2) == 0) {
			str = "당신은 불량유저 이므로 접속을 차단합니다.";
		}
		else {
			str = ("당신의 IP는 " + ipAdd + " 입니다.");
		}
		
		++cnt;
		
		return str;
	}  
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/WebDev/WebContent/_0626/jsp/check.jsp">

	접속횟수 : <%=cnt %> <br  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/WebDev/WebContent/_0626/jsp/check.jsp"/>
	
	<%=checkAddr(request.getRemoteAddr()) %>

</body>
</html>