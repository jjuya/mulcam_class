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
</head>
<body>
<form action="insertAction" method="post" >
<div class="container">
<label>게시물 입력</label>

	<div class="form-group row">
		<label for="name" class="col-2 col-form-label">작성자</label>
		<div class="col-10">
			<input type="text" class="form-control" name="name" required="required" autofocus="autofocus" >
		</div>
	</div>
	
	<div class="form-group row">
		<label for="title" class="col-2 col-form-label">제목</label>
		<div class="col-10">
			<input type="text" class="form-control" name="title" required="required">
		</div>
	</div>
	
	<div class="form-group row">
		<label for="content" class="col-2 col-form-label">내용</label>
		<div class="col-10">
			<textarea class="form-control" rows="3" name="content" required="required"></textarea>
		</div>
	</div>
	
	<div class="form-group row">
		<label for="pwd" class="col-2 col-form-label">비밀번호</label>
		<div class="col-10">
			<input type="password" class="form-control" name="pwd" required="required">
		</div>
	</div>
	
	<button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</body>
</html>