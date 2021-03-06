<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	BoardDAO boardDAO = BoardDAO.getInstance();

	//페이징
	long pg = 1; //현재 페이지
	int pageSize = 10; 											//한 페이지에 촐력할 게시물 수
	long totalCnt = boardDAO.getTotalCount(); 					//전체 게시물 수 
	long pageCnt = 0; 											//전체 페이지 수 
		
	try {
		pg = Long.parseLong(request.getParameter("pg"));
	} catch(Exception e){}
	
	long startnum = (pg - 1) * pageSize + 1; 					//출력페이지 시작 번호
	long endnum = pg * pageSize; 								//출력페이지 끝 번호
	
	long blockSize = 10;										//페이지 블럭 크기
	long startPage = (pg - 1)/blockSize * blockSize + 1;		//페이지 블럭 시작페이지
	long endPage = (pg - 1)/blockSize * blockSize + blockSize;	//페이지 블럭 끝페이지
	
	
	pageCnt = totalCnt / pageSize;
	if(totalCnt % pageSize != 0) {
		pageCnt++;
	}
	
	if (pageCnt < endPage) endPage = pageCnt;
	
	//게시판 리스트
	List<BoardVO> list = boardDAO.getBoardList(startnum, endnum);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />

<link rel="stylesheet" type="text/css" href="../../css/board_style.css">

</head>
<body>
<table class="type08">
	<caption>게시물 리스트</caption>
<thead>
<tr>
	<th scope="cols">번호</th>
	<th scope="cols">작성자</th>
	<th scope="cols">제목</th>
	<th scope="cols">작성일</th>
	<th scope="cols">조회수</th>
</tr>
</thead>
<tbody>
<%	for(BoardVO boardVO : list) { %>
<tr>
	<td><%=boardVO.getNo() %></td>
	<td><%=boardVO.getName() %></td>
	<td><a href="content.jsp?no=<%=boardVO.getNo() %>"><%=boardVO.getTitle() %></a></td>
	<td><%=boardVO.getRegdate() %></td>
	<td><%=boardVO.getViewcount() %></td>
</tr>
<%	} %>

<tr>
	<td colspan="5">
	<%	if(startPage == 1) { %>
		[이전블럭]
	<%	} else { %>
		<a href="list.jsp?pg=<%=startPage - 1 %>">[이전블럭]</a>
	<%	} %>
	
	<% 	for(long p=startPage; p <= endPage; p++) { %>
		<% if (p == pg) { %>
			<%=p %>
		<% } else { %>
			<a href="list.jsp?pg=<%=p %>"><%=p %></a>
	<% 	   }
		} %>
	
	<% if(endPage == pageCnt) { %>
			[다음블럭]
	<% } else { %>
		<a href="list.jsp?pg=<%=endPage + 1%>">[다음블럭]</a>
	<% } %>
	
	</td>
</tr>

</tbody>
</table><br/>
<a href="insert.jsp">글쓰기</a><br/>
</body>
</html>