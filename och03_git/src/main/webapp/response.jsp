<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/* 폼문을 이용하지않는 방법 2번쨰 // 페이지 url을 직접적으로 줘서 이동하는 방법임
	sendRedirect는 나와 상관없는 남의 페이지에 가는방법.
	파라미터가 있는 경우에는 이렇게 쓴다(get방식으로 url에 ?붙이기는 하는데 귀찮)
 */	response.sendRedirect("http://www.choongang.co.kr/fordeveloper");
%>
</body>
</html>