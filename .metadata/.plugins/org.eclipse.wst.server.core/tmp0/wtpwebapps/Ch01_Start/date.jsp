<%@ page import= "java.util.Date" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%
		Date d = new Date();
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy년 MM월 dd일");
		String str=sdf.format(d);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Apache Tomcat::<br>
	Apache:: Web Server<br>
	Tomcat Server ::WAS(Web Application Server)<br>
	현재날짜는<%=str%>입니다.
</body>
</html>