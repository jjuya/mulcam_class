<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-0" data-genuitec-path="/MVC_Board_ibatis/WebContent/DBCP/DBCPTest.jsp">

<%
	Connection cn = null;
	
	try {
		Context context = new InitialContext();
		Context envContext = (Context)context.lookup("java:/comp/env");
		
		DataSource ds = (DataSource)envContext.lookup("jdbc/mydbcp");
		
		cn = ds.getConnection();
		out.println("success");
	}
	catch(Exception e) {}
	finally {
		if(cn != null) try {cn.close();} catch(Exception e) {}
	}
%>

</body>
</html>