<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Long.parseLong(request.getParameter("no"));

	BoardDAO boardDAO = BoardDAO.getInstance();
	BoardVO boardVO = boardDAO.getBoard(no);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-92" data-genuitec-path="/WebDev/WebContent/_0704/board/content.jsp">
<table data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-92" data-genuitec-path="/WebDev/WebContent/_0704/board/content.jsp">
	<caption>게시물 상세보기</caption>
<tr>
	<th>글번호</th>
	<td><%=boardVO.getNo() %></td>
</tr>
<tr>
	<th>작성자</th>
	<td><%=boardVO.getName() %></td>
</tr>
<tr>
	<th>제목</th>
	<td><%=boardVO.getTitle() %></td>
</tr>
<tr>
	<th>내용</th>
	<td><%=boardVO.getContent() %></td>
</tr>
<tr>
	<th>날짜</th>
	<td><%=boardVO.getRegdate() %></td>
</tr>
<tr>
	<th>조회수</th>
	<td><%=boardVO.getViewcount() %></td>
</tr>
</table><br/>
<a href="list.jsp">리스트</a>
<a href="update.jsp?no=<%=boardVO.getNo() %>">수정</a>
<a href="delete.jsp?no=<%=boardVO.getNo() %>">삭제</a>
</body>
</html>