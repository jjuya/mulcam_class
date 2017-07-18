<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="vo" value="articleVO" />

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
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-4" data-genuitec-path="/MVC_Board/WebContent/WEB-INF/views/article/list.jsp">
	
<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-4" data-genuitec-path="/MVC_Board/WebContent/WEB-INF/views/article/list.jsp">
	<label>게시물 리스트</label>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="cols">번호</th>
				<th scope="cols">제목</th>
				<th scope="cols">작성자</th>
				<th scope="cols">작성일</th>
				<th scope="cols">조회수</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="vo">
			<tr>
				<td scope="row">${vo.no}</td>
				<td><a href="detail?no=${vo.no}">${vo.title}</a></td>
				<td>${vo.name}</td>
				<td>${vo.regdate}</td>
				<td>${vo.viewcount}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5">
				${pageNation.display}
			</td>
		</tr>
		</tbody>
	</table>
	<br /> 
	<a class="btn btn-default" href="insert">글쓰기</a><br />
</div>

</body>
</html>