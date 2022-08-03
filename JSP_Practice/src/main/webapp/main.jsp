<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %> <!-- 엔코딩은 항상 최상단에 넣는다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>

<h1><%=request.getParameter("uname") %>, 반갑습니다! :D</h1>

<form action="add.jsp" method="post"> 
	<select name="product">
		<option>닐라 닐라 바닐라</option>
		<option>베리 베리 스트로베리</option>
		<option>엄마는 외계인</option>
		<option>초코나무숲</option>
		<option>그린티</option>
	</select>
	<input type="submit" value="장바구니에 추가하기">
</form>


<a href="result.jsp">구매하기</a> <!--  get으로 요청(새로운 요청) -->

</body>
</html>