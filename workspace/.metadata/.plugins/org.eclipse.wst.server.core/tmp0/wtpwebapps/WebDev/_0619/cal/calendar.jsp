<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-13" data-genuitec-path="/WebDev/WebContent/_0619/cal/calendar.jsp">
<%-- html 주석 --%>
<% //scriptlet
	Calendar sDay = Calendar.getInstance();

	int year = 2017;
	int month = 6;
	int startWeek = 0;
	int endDay = 0;

	sDay.set(year, month - 1, 1);
	startWeek = sDay.get(Calendar.DAY_OF_WEEK);

	endDay = sDay.getActualMaximum(Calendar.DATE);
%>

<%= year + " 년 " + month + " 월 " %>
<table data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-13" data-genuitec-path="/WebDev/WebContent/_0619/cal/calendar.jsp">
<tr>
	<td>일</td>
	<td>월</td>
	<td>화</td>
	<td>수</td>
	<td>목</td>
	<td>금</td>
	<td>토</td>
</tr>
<tr>
<%
	for(int d = 1; d < startWeek; d++) {
		out.println("<td></td>");
	} //end for

	for(int i = 1, w = startWeek; i <= endDay; i++, w++) {

		out.println("<td>" + i + "</td>");

		if((w % 7)== 0) {
			out.println("</tr><tr>");
		} //end if : print next line
	} //end for
%>
</tr>
</table>

</body>
</html>