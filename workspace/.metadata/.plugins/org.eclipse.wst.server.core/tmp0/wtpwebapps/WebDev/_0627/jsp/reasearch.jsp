<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	b {
		font-size: 16pt;
	}
</style>

<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-35" data-genuitec-path="/WebDev/WebContent/_0627/jsp/reasearch.jsp">

<h2 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-35" data-genuitec-path="/WebDev/WebContent/_0627/jsp/reasearch.jsp">설문 조사 결과</h2>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	out.println("이름 : <b>" + name + "</b><br>");
	
	String gender = request.getParameter("gender");
	out.println("성별 : ");
	
	if(gender.equals("male")) {
		out.println("<b>남자</b><br>");
	}
	else if(gender.equals("female")) {
		out.println("<b>여자</b><br>");
	}
	
	String seasonArr[] = request.getParameterValues("season");
	out.println("좋아하는 계절 : ");
	
	for(String season : seasonArr) {
		int n = Integer.parseInt(season);
		
		switch(n) {
		case 1 : out.println("<b>봄</b>입니다.");
				 break;
		case 2 : out.println("<b>여름</b>입니다.");
				 break;
		case 3 : out.println("<b>가을</b>입니다.");
				 break;
		case 4 : out.println("<b>겨울</b>입니다.");
				 break;
		}
	} //end for
%>

<br>

<b><a href='javascript:history.go(-1)'>다시</a></b>

</body>
</html>