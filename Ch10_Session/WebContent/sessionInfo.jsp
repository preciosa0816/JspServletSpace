<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
Date time = new Date();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Session ID: <%=session.getId() %><br>
<% time.setTime(session.getCreationTime()); %><br>
Session Creation Time: <%=sdf.format(time) %><br>
<%time.setTime(session.getLastAccessedTime()); %><br>
Recent Access Time: <%=sdf.format(time) %>
</body>
</html>