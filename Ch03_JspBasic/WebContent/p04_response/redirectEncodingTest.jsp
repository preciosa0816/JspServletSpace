<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String value="Java";
    String encodedValue=URLEncoder.encode(value,"utf-8");
    response.sendRedirect("index2.jsp?name="+encodedValue);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
test
</body>
</html>