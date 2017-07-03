<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-63" data-genuitec-path="/WebDev/WebContent/_0629/cookie2/cookieForm.jsp">

<form action="cookie_add.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-63" data-genuitec-path="/WebDev/WebContent/_0629/cookie2/cookieForm.jsp">
<table>
	<caption>쿠키 생성 폼</caption>
	
	<tr>
		<th>아이디</th>
		<td><input type="text" name="user_id" /></td>
	</tr>
	
	<tr>
		<th>이름</th>
		<td><input type="text" name="user_name" /></td>
	</tr>
	
	<tr>
		<th>레벨</th>
		<td>
			<select name="user_level">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			</select>
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