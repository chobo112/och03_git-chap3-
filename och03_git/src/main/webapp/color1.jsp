<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	//select.html => select.jsp => color1.jsp로 오는
	//request.setAttr = request.getAttribut는 1쌍
	//
	//변수선언들을 꺼내는 방법
	String color = request.getAttribute("color").toString();
%>
<body bgcolor="<%=color%>">
</body>
</html>