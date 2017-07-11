<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% 
 	String value = null;
 	String check = null;
 
 	Cookie[] cookies = request.getCookies();
	
 	if (cookies != null) {
		for (Cookie c : cookies) { 
			if (c.getName().equals("user_id")) {
				
				value=c.getValue();
			}
		} //for
	}
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-77" data-genuitec-path="/WebDev/WebContent/_0629/login/login.jsp">

<form action="login_action.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-77" data-genuitec-path="/WebDev/WebContent/_0629/login/login.jsp">
<table>
	<caption>로그인</caption>
	
	<tr>
		<th>아이디</th>
		<td><input type="text" name="user_id" value="<%= value == null ? "": value%>"/></td>
	</tr>
	
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="user_pw" /></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="checkbox" name="save_id" <%= value != null ? check="checked": ""%>/> 아이디 저장
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="완료" />
		</td>
	</tr>
	
</table>
</form>

</body>
</html>