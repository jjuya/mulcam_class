<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-63" data-genuitec-path="/WebDev/WebContent/_0628/memo/memo_insert.jsp">

<form action="memo_insert_action.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-63" data-genuitec-path="/WebDev/WebContent/_0628/memo/memo_insert.jsp">

<table>
	<caption> 메모 입력	</caption>
	
	<tr>
		<td>제목</td>
		<td><input type="text" name="title" /></td>
	</tr>
	
	<tr>
		<td>작성자</td>
		<td><input type="text" name="name" /></td>
	</tr>
	
	<tr>
		<td>내용</td>
		<td><textarea cols="40" rows="5" name="content"></textarea></td>
	</tr>
	
	
</table>

<input type="submit" value="완료" />

</form>

</body>
</html>