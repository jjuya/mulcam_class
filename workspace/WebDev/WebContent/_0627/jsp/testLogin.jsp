<%@page import="java.net.URLEncoder" %>
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
	String id = "jjuya";
	String pwd = "1234";
	String name = "박주연";
	
	request.setCharacterEncoding("UTF-8");
	
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))) {
		response.sendRedirect("main.jsp?name=" + URLEncoder.encode(name, "utf-8"));
	}
	else {
%>
	<script> 
	alert('아이디나 비밀번호가 틀렸습니다.'); 
	javascript:history.back();
	</script>
<%		//response.sendRedirect("04_loginForm.jsp");
	}
%>

</body>
</html>