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

<%
	Cookie c = new Cookie("id", "");

	c.setMaxAge(0);

	response.addCookie(c);
%>

<a href="getCookies.jsp"> 쿠키 삭제를 확인하려면 클릭하세요.</a>

</body>
</html>