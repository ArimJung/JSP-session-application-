<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 페이지</title>
</head>
<body>

<h1>구매한 상품 목록</h1>
<hr>
<%
	ArrayList<String> list = (ArrayList) session.getAttribute("productList");
	for(int i=0; i<list.size() ;i++){		
	out.print(list.get(i) + "<br>");         
	}
%>


</body>
</html>