<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />

<script type="text/javascript">
	function input_check() {
		var f = document.myform
		var user_id = document.getElementById(id);
		var user_pw = document.getElementById(pwd);
		
		console.log('input_check() 수행중');
		console.log('userid : ' + f.userid.value);
		console.log('userpw : ' + f.userpwd.value);
		console.log('-------------------------------');
		console.log('userid : ' + document.getElementById(id));
		console.log('userpw : ' + document.getElementById(pwd));
		
		if(user_id === '') {
			alert('아이디를 입력하세요.');
			return;
		}
		
		if(user_pw === '') {
			alert('비밀번호를 입력하세요.');
			return;
		}
		
		f.submit();
	}
</script>

</head>
<body>

<form name="myform" action="testLogin.jsp" method="post">
	<label for="userid">아이디 : </label>
	<input type="text" name="id" id="userid"><br>
	
	<label for="userpwd">암 &nbsp; 호 : </label>
	<input type="password" name="pwd" id="userpwd"><br>
	
	<input type="submit" value="로그인" onclick="input_check()"/>
</form>

</body>
</html>