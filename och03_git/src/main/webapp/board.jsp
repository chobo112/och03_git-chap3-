<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
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
request.setCharacterEncoding("utf-8");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String content = request.getParameter("content");
//Current Date
Date date = new Date();/* Date는 유틸로하자 */
//파일저장!!!
long fileName = date.getTime();
//이렇게 넣으면 시간에 따라 다른이름으로 들어감

//getRealPath는 WEB-INF안에 out이라는 곧에 파일을 만들어 넣겠다. //경로를 지정을 해준것임
//view단 폴더 = Controller입장에서는 패키지!라고 부른다.
String real = application.getRealPath("/WEB-INF/out/"+fileName+".txt");
System.out.println(real);

//File 저장할 수 있는 객체
FileWriter fw = new FileWriter(real);
//File 내용
String msg = "제목 : "+title + "\r\n";
msg += "작성자 : " + writer + "\r\n";
msg += "내용 : " + content + "\r\n";
fw.write(msg);//writer는 .write(적어줄애들)
fw.close();

//화면출력!!! 자바스크립트버전
out.println("제목1 : "+title+"<p>");
out.println("작성자1 : "+writer+"<p>");
out.println("작성일1 : "+date+"<p>");
out.println("내용1 : "+content+"<p>");
%>


<!-- 화면추가 순수 html추가한버전-->
제목2 : <%=title %>><p>
작성자2 : <%=writer %>><p>
내용2 : <%=content %>><p>

</body>
</html>