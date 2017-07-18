<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
	
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/MVC_Board/WebContent/WEB-INF/views/article/detail.jsp">
<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/MVC_Board/WebContent/WEB-INF/views/article/detail.jsp">
<label>게시물 상세보기</label>
<table class="table">
<tr>
	<th>글번호</th>
	<td>${articleVO.no}</td>
</tr>
<tr>
	<th>작성자</th>
	<td>${articleVO.name}</td>
</tr>
<tr>
	<th>제목</th>
	<td>${articleVO.title}</td>
</tr>
<tr>
	<th>내용</th>
	<td>${articleVO.content}</td>
</tr>
<tr>
	<th>날짜</th>
	<td>${articleVO.regdate}</td>
</tr>
<tr>
	<th scope="cols">조회수</th>
	<td>${articleVO.viewcount}</td>
</tr>
</table><br/>

<a class="btn btn-secondary" href="list">리스트</a>
<a class="btn btn-primary" href="update?no=${articleVO.no}">수정</a>
<a class="btn btn-danger" href="delete?no=${articleVO.no}">삭제</a>
</div>
</body>
</html>