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
</head>
<body>
	
<div class="container">
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
				<c:choose>
				<c:when test="${pageVO.startPage == 1}">
						◀
				</c:when>
				<c:otherwise>
					<a href="list?pg=${pageVO.startPage-1}" class="btn btn-secondary btn-sm">◀</a>
				</c:otherwise>
				</c:choose>
			
				<c:forEach var="p" begin="${pageVO.startPage}" end="${pageVO.endPage}">		
					<a href="list?pg=${p}" class="btn btn-secondary btn-sm">${p}</a>
				</c:forEach>
				
				<c:choose>
				<c:when test="${pageVO.endPage == pageVO.pageCount}">
						▶
				</c:when>
				<c:otherwise>
					<a href="list?pg=${pageVO.endPage + 1}" class="btn btn-secondary btn-sm">▶</a>
				</c:otherwise>
				</c:choose>
			</td>
		</tr>
		</tbody>
	</table>
	<br /> 
	<a class="btn btn-default" href="insert">글쓰기</a><br />
</div>

</body>
</html>