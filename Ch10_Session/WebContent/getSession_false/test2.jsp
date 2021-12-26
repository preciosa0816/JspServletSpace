<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session information</title>
</head>
<body>
Attribute ID : <%=request.getSession().getAttribute("id")%><br>
isNew(): <%=session.isNew() %><br><!-- //세션을 처음생성시 true 아니면 false -->
session Id: <%=session.getId() %><br>
session 생성시간: <%=new java.util.Date(session.getCreationTime()).toString() %><br>
session 마지막 접속시간: <%=new java.util.Date(session.getLastAccessedTime()).toString() %><br>
<a href="test3.jsp">delete session</a>
</body>
</html>