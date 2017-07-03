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
		Cookie c1 = new Cookie("user_id", "");
 		c1.setMaxAge(0);
 		response.addCookie(c1);
 	
 		Cookie c2 = new Cookie("user_name", "");
 		c2.setMaxAge(0);
 		response.addCookie(c2);
 	
 		Cookie c3 = new Cookie("user_level", "");
 		c3.setMaxAge(0);
 		response.addCookie(c3); 	
		
		response.sendRedirect("cookie_status.jsp");
	%>

</body>
</html>