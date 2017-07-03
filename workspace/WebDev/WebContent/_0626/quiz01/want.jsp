<%@page import="java.util.InputMismatchException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String want = request.getParameter("want");
	String want_str = want + "가 하고 싶어요.";
	
	try {
		if (!(want.equals("야구") ||
			  want.equals("축구") ||	
			  want.equals("농구"))) {
			throw new InputMismatchException();
		}
			
	} catch(Exception e) {
		response.sendRedirect("form.jsp");
		return;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(want.css);
</style>
</head>
<body>
<div id="want"><img src="want.png" width="60%" /></div>

<div class="say">
	
	
	<h3><%=want_str %></h3>
</div>
</body>
</html>