<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId=request.getParameter("memberId");
	session.setAttribute("MEMBER", memberId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
LOGIN SUCCESS!
</body>
</html>