<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/MVC_Board/WebContent/WEB-INF/views/article/delete.jsp">
<form action="deleteAction" method="post"  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/MVC_Board/WebContent/WEB-INF/views/article/delete.jsp">
<div class="container">
<label>게시물 삭제</label>

	<div class="form-group row">
		<label for="name" class="col-2 col-form-label">글번호</label>
		<div class="col-10">
			<input type="hidden" class="form-control" name="no" value="${articleVO.no}"/> 
			<p class="navbar-text">${articleVO.no}</p>
		</div>
	</div>
	
	<div class="form-group row">
		<label for="pwd" class="col-2 col-form-label">비밀번호</label>
		<div class="col-10">
			<input type="password" class="form-control" name="pwd" required="required" /> </br>
			<div style="color:red"> *처음 글 등록시 입력한 패스위드를 재입력하세요.</div>
		</div>
	</div>
	
	<button type="submit" class="btn btn-danger">삭제</button>
</div>
</form>
</body>
</html>