<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	response.addCookie(Cookies.createCookie("name", "hong"));
    	response.addCookie(Cookies.createCookie("id", "madvirus", "/Ch09_Cookie", -1));
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies 클래스를 이용한 쿠키생성</title>
</head>
<body>
Cookies를 사용하여 쿠키 생성
</body>
</html>