<%@page import="memo.model.MemoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	MemoVO memoVO= new MemoVO();
	memoVO.setName(name);
	memoVO.setTitle(title);
	memoVO.setContent(content);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
</head>
<body>

<%=memoVO %>

</body>
</html>