<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	public String commentAge(int age) {
		switch(age/10) {
		case 0:
		case 1:
			return "묘령";
		case 2:
			return "약관";
		case 3:
			return "이립";
		case 4:
			return "불혹";
		case 5:
			return "지천명";
		case 6:
			return "이순";
		default:
			return "종심";
		}
	}
%>  
<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안녕하세요, <%= name %>님 <br />
	나이 : <%=age %>(<%= commentAge(age) %>)
</body>
</html>