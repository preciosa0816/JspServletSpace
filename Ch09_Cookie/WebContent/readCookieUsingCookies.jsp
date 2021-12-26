<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%Cookies cookies = new Cookies(request); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies 클래스를 이용한 쿠키 읽기</title>
</head>
<body>
name Cookie=<%=cookies.getValue("name") %><br>
<% if(cookies.exists("id")){ %>
id Cookie=<%=cookies.getValue("id") %><br>
<%} %>
</body>
</html>