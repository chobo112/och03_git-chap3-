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
/* 객체를 제외하고는 전부String이다. 또 여기서 중요한건 int로 바꿀건데 굳이 왜 바꾸냐?
일단 문자열로 바꾼 다음에 다시 숫자로 바꿔주는것 
*/
int num = Integer.parseInt(request.getAttribute("num").toString());
out.println("<h1>구구단 "+num+"단</h>");
for(int i = 1; i<=9; i++){
	out.println(num+"*"+i+" = " +(num*i)+"<br>");
}
%>
</body>
</html>