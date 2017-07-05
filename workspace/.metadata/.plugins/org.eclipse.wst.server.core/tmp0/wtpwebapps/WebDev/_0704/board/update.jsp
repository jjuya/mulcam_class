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
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-93" data-genuitec-path="/WebDev/WebContent/_0704/board/update.jsp">
<form action="update_action.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-93" data-genuitec-path="/WebDev/WebContent/_0704/board/update.jsp">
<table>
	<caption>게시물 수정</caption>
		<tr>
			<th>글번호</th>
			<td><%=boardVO.getNo() %><input type="hidden" name="no" value="<%=boardVO.getNo() %>"/></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="name" value="<%=boardVO.getName() %>" /></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" value="<%=boardVO.getTitle() %>" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="40" rows="5" name="content"><%=boardVO.getContent() %></textarea></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pwd" /><br />
			<div style="color: red">* 처음 글 등록시 입력했던 비밀번호를 재입력하세요.</div></td>
		</tr>
		</table>
<input type="submit" value="완료" />
</form>
</body>
</html>