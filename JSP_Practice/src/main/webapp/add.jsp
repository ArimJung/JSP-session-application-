<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 물건을 추가하는 로직(화면 x)</title>
</head>
<body>

<%
	//로직
	

	ArrayList<String> list = (ArrayList)session.getAttribute("productList"); 
	// 리턴타입이 오브젝트 > arraylist 로 형변환 필수
	
	if(list==null){ 
		list = new ArrayList<String>();
		session.setAttribute("productList", list);		
	}
	
	
	list.add(request.getParameter("product"));

%>


<script type="text/javascript">
	alert("<%=request.getParameter("product")%>이(가) 장바구니에 추가되었습니다!");
	history.go(-1);
</script>

</body>
</html>