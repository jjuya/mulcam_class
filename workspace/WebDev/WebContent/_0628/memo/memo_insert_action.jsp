<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="memo.model.MemoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="memoVO" class="memo.model.MemoVO" />
<jsp:setProperty name="memoVO" property="*" />

<% 
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	StringBuffer sql = new StringBuffer();
	sql.append("insert into t_memo(no, name, title, content)");
	sql.append("values(seq_memo.nextval, ?, ?, ?)");
	
	boolean result = false;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
		
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, memoVO.getName());
		pstmt.setString(2, memoVO.getTitle());
		pstmt.setString(3, memoVO.getContent());
		
		pstmt.executeUpdate();
		
		result = true;
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	finally {
		if(pstmt != null) try{pstmt.close();} catch(Exception e){}
		if(conn != null) try{conn.close();} catch(Exception e){}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
</head>
<body>

<% if(result) { %>
등록 성공
<% } else { %>
등록 실패
<% } %>
</body>
</html>