<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	//parameter받고 num만큼 누적
	/* request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8"); */
	int num = Integer.parseInt(request.getParameter("num"));
	int sum = 0;
	//for(int i=0; i<num; i++){
	for(int i=0; i<=num; i++){
		sum = sum+i;
}
%>
</head>
<body>
<h1>누적 합계 : <%=sum%> </h1>

</body>
</html>