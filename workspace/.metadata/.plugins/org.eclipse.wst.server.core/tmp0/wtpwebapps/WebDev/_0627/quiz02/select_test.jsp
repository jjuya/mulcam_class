<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function what() {
	alert(document.myform.you.value);
}

function what_month() {
	alert(document.monthform.month.value + "월");
}
</script>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-43" data-genuitec-path="/WebDev/WebContent/_0627/quiz02/select_test.jsp">
<form name="myform" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-43" data-genuitec-path="/WebDev/WebContent/_0627/quiz02/select_test.jsp">
<select name="you" multiple="multiple" onchange="what()">
	<option value="1">가위</option>
	<option value="2" selected>바위</option>
	<option value="3">보</option>
</select><br/>
</form>

<form name="monthform">
<select name="month" onchange="what_month()">
<%  
	int month = 6;
	for(int m=1; m<=12; m++){ %>
	<option <%= m==month ? " selected ":"" %>><%=m %></option>
<%	} %>
</select>
</form>
</body>
</html>