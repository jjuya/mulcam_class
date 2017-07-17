<%@page import="sun.misc.Perf.GetPerfAction"%>
<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function func_addyear() {
		var f = document.myform
		f.addyear.value = "1";
		f.submit();
	}

	function func_subyear() {
		var f = document.myform
		f.addyear.value = "-1";
		f.submit();
	}

	function func_addmonth() {
		var f = document.myform
		f.addmonth.value = "1";
		f.submit();
	}
	
	function func_submonth() {
		var f = document.myform
		f.addmonth.value = "-1";
		f.submit();
	}
	
</script>

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-39" data-genuitec-path="/WebDev/WebContent/_0627/quiz02/calendar.jsp">
<form name="myform" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-39" data-genuitec-path="/WebDev/WebContent/_0627/quiz02/calendar.jsp">
	<input type="hidden" name="addmonth" value="0">
	<input type="hidden" name="addyear" value="0">

<%	
	Calendar c = Calendar.getInstance();

	int year = 0;
	int month = 0;
	
	try{
		//년, 월의 파라메터가 전달될 때
		year = Integer.parseInt(request.getParameter("year")) + Integer.parseInt(request.getParameter("addyear"));
		month = Integer.parseInt(request.getParameter("month")) + Integer.parseInt(request.getParameter("addmonth"));
		
		c.set(year, month - 1, 1);
	}
	catch(Exception e) {
		//년, 월의 파라메터가 없을 때(가장 처음)
		year = c.get(Calendar.YEAR);
		month = c.get(Calendar.MONTH) + 1;
		
		c.set(year, month - 1, 1);		
	}
	
	//변경된 년, 월을 다시
	year = c.get(Calendar.YEAR);
	month = c.get(Calendar.MONTH) + 1;
	
	int week = c.get(Calendar.DAY_OF_WEEK);
	int end_day = c.getActualMaximum(Calendar.DATE);
%>	


<table style="width: 300px;">

<caption>

	<span onclick="func_subyear()" style="cursor:pointer;">◁</span>
	<span onclick="func_submonth()" style="cursor:pointer;">◀</span>
	
	<select name="year" onchange="document.myform.submit()">
		<% for(int y = year-5; y <= year + 5; y++) { %>
			<option <%=((year == y) ? "selected" : "") %>><%=y %></option>
		<% } %>
	</select> 년
	
	<%-- 1. 1~12월까지 select 박스로 출력 --%>

	<select name="month" onchange="document.myform.submit()">
		<% for(int m = 1; m <= 12; m++) { %>
			<option <%=((month == m) ? "selected" : "") %>><%=m %></option>
		<% } %>
	</select> 월
	
	<span onclick="func_addmonth()" style="cursor:pointer;">▶</span>
	<span onclick="func_addyear()" style="cursor:pointer;">▷</span>
	
</caption> 

<% 
	c.set(year, month - 1, 1);
%>

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
	for(int d=1; d < week; d++) {
		out.println("<td></td>");
	}
	for(int d=1, w=week; d <= end_day; d++, w++) {
		out.println("<td>" + d + "</td>");
		if (w % 7 == 0) out.println("</tr><tr>");
	}
%>
</tr>
</table>

</form>
</body>
</html>