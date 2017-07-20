<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#speak').click(function() {
			$('#myaudio').stop();
			$('#myaudio').attr('src', '../Speaker?&' + $('#myform').serialize());
			$('#myaudio').attr('autoplay', 'autoplay');
		});
	});

</script>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-7" data-genuitec-path="/MVC_Board_ibatis/WebContent/WEB-INF/views/text2speech/text2speech.jsp">

<form id="myform" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-7" data-genuitec-path="/MVC_Board_ibatis/WebContent/WEB-INF/views/text2speech/text2speech.jsp">

	text2speech text example... <br />
	
	<textarea rows="7" name="statement">Hello</textarea> <br />
	
	<select name="voice">
		<c:forEach items="${voices}" var="voice">
			<option>${voice.language} : ${voice.description} : ${voice.name}</option>
		</c:forEach>
	</select> <br />
	
	<input type="button" id="speak" value="읽기" /> <br />
	
	<audio id="myaudio" controls="controls" preload="auto"></audio>
	
</form>
</body>
</html>