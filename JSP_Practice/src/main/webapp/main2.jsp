<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %> <!-- 엔코딩은 항상 최상단에 넣는다 -->
 <!-- 아이디 정보는 보안 때문에 무조건 session -->
<% 
 if(!(request.getParameter("id")==null)){
   session.setAttribute("id", request.getParameter("id"));  
 }
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>

 <form action="add2.jsp" ,method="post">
[ <%=session.getAttribute("id") %>님 ] : <input type="text" name="msg">
 <input type="submit" value="글쓰기">
 </form>

<br>
----------------------------------------------------<br>
 	
 <% 
 ArrayList<String> list = (ArrayList) application.getAttribute("list");
 
 
 if(list==null){
	out.println("아직 내용이 없습니다!");	 
 }
 else{
 for(int i=0; i<list.size() ;i++){		
		out.print(list.get(i) + "<br>");         
		}
 }
 %>


</body>
</html>