<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>right.jsp</h1>
	<%
		if (session.getAttribute("id") != null) {
	%>
	<img src="index.jpg"><br>
	접속중
	<%
		} else {
	%>
	로그인되어있지 않은 상태입니다.
	<%
		}
	%>
</body>
</html>