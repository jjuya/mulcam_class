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

	thirdPage.jsp : <br>
	page :  		<%=pageContext.getAttribute("name") %> <br>
	request :  		<%=request.getAttribute("name") %> <br>
	session :  		<%=session.getAttribute("name") %> <br>
	application :  	<%=application.getAttribute("name") %> <br>

</body>
</html>
