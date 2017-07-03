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

	secondPage.jsp : <br>
	page :  		<%=pageContext.getAttribute("name") %> <br>
	request :  		<%=request.getAttribute("name") %> <br>
	session :  		<%=session.getAttribute("name") %> <br>
	application :  	<%=application.getAttribute("name") %> <br>

	<a href="thirdPage.jsp">또 다른 페이지</a>

</body>
</html>
