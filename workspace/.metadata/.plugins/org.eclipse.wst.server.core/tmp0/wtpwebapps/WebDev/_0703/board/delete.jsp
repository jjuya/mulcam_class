
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-85" data-genuitec-path="/WebDev/WebContent/_0703/board/delete.jsp">
<form action="delete_action.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-85" data-genuitec-path="/WebDev/WebContent/_0703/board/delete.jsp">
<table>
	<caption>게시물 삭제</caption>
	
	<% long no = Long.parseLong(request.getParameter("no")); %>
		<tr>
			<th>글번호</th>
			<td><%=no %><input type="hidden" name="no" value="<%=no %>"/></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pwd" /><br />
			<div style="color: red">* 처음 글 등록시 입력했던 비밀번호를 재입력하세요.</div></td>
		</tr>
		</table>
<input type="submit" value="완료" />
</form>
</body>
</html>