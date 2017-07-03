<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 70.12.50.73 --%>

<%!
	int cnt = 1;


	public String checkAddr(String ipAdd) {
	
		String str;
		
		if((cnt % 2) == 0) {
			str = "당신은 불량유저 이므로 접속을 차단합니다.";
		}
		else {
			str = ("당신의 IP는 " + ipAdd + " 입니다.");
		}
		
		++cnt;
		
		return str;
	}  
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	접속횟수 : <%=cnt %> <br />
	
	<%=checkAddr(request.getRemoteAddr()) %>

</body>
</html>