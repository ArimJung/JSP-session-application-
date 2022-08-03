<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표지페이지</title>
</head>
<body>

<form action="main.jsp" , method="post"> <!--  정보를 넣어서 보내주기 떄문에 post -->
	<input type="text" required="required" placeholder="이름" name="uname"><br>
	<input type="submit" value="로그인하기">
</form>

</body>
</html>