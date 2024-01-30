<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head><%-- 바디에다가 속성을 줄거라서 헤드에다가 <% %>를 적어준것임 --%>
<%
String color = request.getParameter("color");
%>
<body bgcolor="<%=color%>">>
	<h1>익스프레션 이용한 색깔변경</h1>
</body>
</html>