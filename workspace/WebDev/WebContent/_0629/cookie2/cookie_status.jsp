<%@page import="java.net.URLDecoder"%>
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
	<a href="cookieForm.jsp"> 쿠키 생성 </a> <br>
	
	<a href="delete_ID.jsp">ID 삭제</a> <br>
	<a href="delete_name.jsp">이름 삭제</a> <br>
	<a href="delete_level.jsp">레벨 삭제</a> <br>
	<a href="delete_all.jsp">전체 삭제</a> <br>

<%
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(Cookie c : cookies) {
			if(!c.getName().equals("JSESSIONID")) {
				out.println("쿠키 이름 :" + c.getName() + "<br>");
				out.println("쿠키 값 :" + URLDecoder.decode(c.getValue()) + "<br>");
				out.println("<hr>");
			}
		}
	}
%>

</body>
</html>