<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="../../favicon.ico" />
</head>
<body>

<form action="/file/upload.do" method="post" enctype="multipart/form-data">
name : <input type="text" name="name" /><br>
title : <input type="text" name="title" /><br>
name : <input type="file" name="uploadFile" /><br>

<input type="submit" value="submit" />

</form>

</body>
</html>