<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "shortcut icon" href="../favicon.ico" />
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(function() {
	$('#btnText').click(function() {
		$.get('msg.txt')
		 .done(function(data) {
			 alert(data);
		 });
	});
	
	$('#btnJsp').click(function() {
		$.post('iam.jsp', {name:$('#name').val()}) //json 객체
		 .done(function(data) {
			 alert(data);
		 });
	});
});
</script>
</head>
<body>

<input type="button" id="btnText" value="get text" />
<hr />

<input type="text" id="name" />
<input type="button" id="btnJsp" value="get jsp"/>
<div id="rcvMsg"></div>
</body>
</html>