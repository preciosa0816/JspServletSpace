<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
현재페이지는 responseRedirect.jsp입니다.<br>
name=hong넘기기
<%pageContext.setAttribute("name", "page");// 넘어가지않음
request.setAttribute("name", "request");// 넘어가지 않음
session.setAttribute("name", "session");
application.setAttribute("name", "application"); %>
<%
	response.sendRedirect("responseRedirected.jsp?name=hong");	
	
%>
</body>
</html>