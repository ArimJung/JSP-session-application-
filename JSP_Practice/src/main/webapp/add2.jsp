<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	//로직
	
	ArrayList<String> list = (ArrayList)application.getAttribute("list"); 
	// 리턴타입이 오브젝트 > arraylist 로 형변환 필수
	
	if(list==null){ 
		list = new ArrayList<String>();
		application.setAttribute("list", list);		
	}
	
	
	list.add(session.getAttribute("id") + "\t"+request.getParameter("msg"));

	response.sendRedirect("main2.jsp"); // 메인보여줘
	
%>


