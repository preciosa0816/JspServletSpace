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
	String id=(String)session.getAttribute("id");
	String pw=session.getAttribute("pw").toString();
	out.println("session_id : "+id+"<br>");
	out.println("session_pw : "+pw+"<br>");
%>

ID: <%=id %><br>
PW: <%=pw %>
</body>
</html>