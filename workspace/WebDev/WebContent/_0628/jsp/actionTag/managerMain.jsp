<%@ page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
</head>
<body bgcolor="yellow">

<h3>매니저로 로그인 성공</h3>
<%=URLDecoder.decode(request.getParameter("userName"),"UTF-8") %>
<%=request.getParameter("userName") %>님 환영합니다.

</body>
</html>