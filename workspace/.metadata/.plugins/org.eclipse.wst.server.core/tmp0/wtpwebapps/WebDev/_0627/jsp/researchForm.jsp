<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-36" data-genuitec-path="/WebDev/WebContent/_0627/jsp/researchForm.jsp">

<h2 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-36" data-genuitec-path="/WebDev/WebContent/_0627/jsp/researchForm.jsp">설문조사</h2>
<form action="reasearch.jsp" method="post">
	<table>
		<tr>
			<td>이름 :</td>
			<td><input type="text" name="name" size="20"></td>
		</tr>
		
		<tr>
			<td>성별 :</td>
			<td>
				<input type="radio" name="gender" value="male" checked="checked"> 남자
				<input type="radio" name="gender" value="female"> 여자
			</td>
		</tr>
		
		<tr>
			<td>좋아하는 계절 :</td>
			<td>
				<input type="checkbox" name="season" value="1"> 봄
				<input type="checkbox" name="season" value="2"> 여름
				<input type="checkbox" name="season" value="3"> 가을
				<input type="checkbox" name="season" value="4"> 겨울
			</td>
		</tr>
		
		<tr align="center">
			<td><input type="submit" value="제출"></td>
			<td><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>

</body>
</html>