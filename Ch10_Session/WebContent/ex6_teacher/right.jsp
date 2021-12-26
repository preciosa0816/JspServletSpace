<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>right.jsp</h2>
		<%
		//세션의 정보가 없을때 로그인 화면 있을때 로그인중 ! 표시
		if(session.getAttribute("id")==null){  //세션이 널이면
			out.print("<h2>로그인되어있지 않은 상태입니다.</h2>");
		}else{
			out.print("<img src='IMG.jpg'><br/>");
			out.print("<h2>접속중입니다.</h2>");				
		}
		%>
</body>
</html>