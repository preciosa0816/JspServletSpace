<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CurrentTime_Jsp</title>
</head>
<body>
<%
	Calendar c= Calendar.getInstance();
	int hour=c.get(Calendar.HOUR_OF_DAY);
	int min=c.get(Calendar.MINUTE);
	int sec=c.get(Calendar.SECOND);
%>
<%
// Date now = new Date();
// 	int hour=now.getHours();
// 	int min=now.getMinutes();
// 	int sec=now.getSeconds(); 
%>
Jsp::현재 시각은 <%=hour %>시 <%=min %>분 <%=sec %>초입니다.
</body>
</html>