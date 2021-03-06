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
</head>
<body>

<form id="myform" method="post">

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