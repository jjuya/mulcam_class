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
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-58" data-genuitec-path="/WebDev/WebContent/_0628/memo/memo_insert_action.jsp">

<% if(result) { %>
등록 성공
<% } else { %>
등록 실패
<% } %>
</body>
</html>