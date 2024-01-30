<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   
</head>
<body>
   <h1>사칙연산</h1>
   <%
   int num1 = Integer.parseInt(request.getParameter("num1"));
   int num2 = Integer.parseInt(request.getParameter("num2"));
   float num3 = (float)num1/num2;
   /* int num1= Integer.parseInt(request.getParameter("num1"));
   int num2= Integer.parseInt(request.getParameter("num2")); 
   int add = num1 + num2;
   int min = num1-num2;
   int mul = num1*num2;
   int div = num1 / num2;
   float num3 = num1/num2; */

   %>
   <!-- Expression(표현식) -->
   <!-- PrintWriter out = response.getWriter();
   out.printf("<h1>덧샘 : %S + %S = %S</h1>",num1, num2, num1+num2);
   out.printf("<h1>뺼샘 : %S - %S = %S</h1>",num1, num2, num1-num2);
   out.printf("<h1>곱샘 : %S * %S = %S</h1>",num1, num2, num1*num2);
   out.printf("<h1>나눗샘 : %S / %S = %S</h1>",num1, num2, num3); -->
   덧셈 : <%= num1 + num2 %><p>
   뺄셈 : <%= num1 - num2 %><p>
   곱셈 : <%= num1 * num2 %><p>
   나눗셈 : <%= num3 %>
   
</body>
</html>