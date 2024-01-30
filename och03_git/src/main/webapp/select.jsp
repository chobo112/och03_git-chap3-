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
	String[] col={"red","orange","yellow","green","blue","navy","violet","black"};
	//8미만은 수자
	int n = (int)(Math.random()*8);
	// color1.jsp    gugu1.jsp    response.jsp
	String pgm = request.getParameter("pgm")+".jsp";
	//폼문의 액션 누르면 input변수들 중에서 선택된 name="pgm"중에서 눌린애가 전달됨
	//1.form없이 이동 page를 지정하는 객체 선언,, 이동은 2.아들Page를 지정하는 부분에서 이동함
	//RequestDispatcher가 form대신에(form문 통하지않고) 이동하는 2번째 방법	
	//현재 20번쨰줄과 35번째줄은 한몸(여기서 값을 넣어주고)
	//getRequestDispatcher(pgm) = input3줄 데려옴
	RequestDispatcher rd = request.getRequestDispatcher(pgm);
	if(pgm.equals("color1.jsp")){//color1.jsp를 만들어야한다.
		//변수선언 여기있는애들을 데리고 color1.jsp로 이동하게 됨
		request.setAttribute("color",col[n]);//n은 맨위에 색깔배열의 인덱스
		//form문 대신에 파라미터를 가져오는 방법임
	//rd=request.getRequestDispatcher("color1.jsp")	
	}else if (pgm.equals("gugu1.jsp")){
		//2단~9단(위에서 설정한 0부터 7까지의 숫자에 +2를 하기떄문에 2단~9단)순서대로라는게 아님
		//2단~9단 사이에 단이 나오는다는 것임
		request.setAttribute("num",n+2);
	//rd-request.getRequestDispatcher("gugu1.jsp")
	}else if (pgm.equals("response.jsp")){
		//예비
	}
	//2.아들 Page를 지정하는 객체선언을 실제적으로 이동// request, response는 내장객체
	rd.forward(request, response);
%>

</body>
</html>