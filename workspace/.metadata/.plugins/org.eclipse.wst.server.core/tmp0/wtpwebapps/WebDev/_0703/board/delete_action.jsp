<%@page import="sun.util.logging.resources.logging"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Long.parseLong(request.getParameter("no")) ;
	String pwd = request.getParameter("pwd");

	BoardVO boardVO = new BoardVO();
	boardVO.setNo(no);
	boardVO.setPwd(pwd);
	
	Connection cn = null;
	PreparedStatement ps = null;
	
	boolean result = false;
	StringBuffer sql = new StringBuffer();
	sql.append(" DELETE FROM tb_board");
	sql.append(" WHERE no=? AND pwd=?");
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		
		cn = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
		
		ps = cn.prepareStatement(sql.toString());
		ps.setLong(1, boardVO.getNo());
		ps.setString(2, boardVO.getPwd());
		
		if(ps.executeUpdate() == 1) {
			result = true;
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if (ps != null) try{ps.close();}catch(Exception e){}
		if (cn != null) try{cn.close();}catch(Exception e){}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-86" data-genuitec-path="/WebDev/WebContent/_0703/board/delete_action.jsp">
<script type="text/javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-86" data-genuitec-path="/WebDev/WebContent/_0703/board/delete_action.jsp">
<% if(result) { %>
	alert('글 삭제 성공');
	location.href='list.jsp';
<% } else { %>
	alert('비밀번호가 틀립니다.');
	location.href='javascript:history.back();';
<% } %>
</script>
</body>
</html>