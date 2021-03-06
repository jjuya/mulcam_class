<%@page import="java.io.Console"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<%
	String user_id = request.getParameter("user_id").trim();
	String user_pw = DigestUtils.sha512Hex(request.getParameter("user_pw"));
	String user_name = null;
	
	String save_id = request.getParameter("save_id");
		
	//jdbc
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	StringBuffer sql = new StringBuffer();
	sql.append(" SELECT user_name");
	sql.append(" FROM t_mem");
	sql.append(" WHERE user_id = ?");
	sql.append(" AND user_pw = ?");
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");	
		
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, user_id);
		pstmt.setString(2, user_pw);
		rs = pstmt.executeQuery();
				
		if(rs.next()) {
			user_name = rs.getString("user_name");
		}		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(rs != null) try{rs.close();} catch (Exception e) {}
		if(pstmt != null) try{pstmt.close();} catch (Exception e) {}
		if(conn != null) try{conn.close();} catch (Exception e) {}
	} //end try-catch-finally

	if(save_id != null && save_id.equals("on")) {
		Cookie save = new Cookie("user_id", user_id);
		save.setMaxAge(60 * 60 * 24 *30);
	 	response.addCookie(save);
	 	
	} else {
		Cookie save = new Cookie("user_id", "");
		save.setMaxAge(0);
	 	response.addCookie(save);
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

<% if(user_name != null) {
		out.println(user_name + "회원님이 로그인 되었습니다.");
 	} 
	else {	%>
		<script type="text/javascript">
			alert('아이디 혹은 비밀번호가 틀립니다.');
			location.href = 'login.jsp';
			
			fu
		</script>
<% } %>

</body>
</html>