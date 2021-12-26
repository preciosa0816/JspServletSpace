<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check login or not</title>
</head>
<body>
	<%
		if (cookies.exists("AUTH")) {
	%>
	ID : "<%=cookies.getValue("AUTH")%>"로 로그인 한 상태
	<%
		} else {
	%>
	로그인 하지 않은 상태
	<%
		}
	%>
</body>
</html>