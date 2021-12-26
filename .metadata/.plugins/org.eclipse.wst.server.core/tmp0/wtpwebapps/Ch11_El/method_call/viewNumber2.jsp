<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import='util.FormatUtil' %>
<% request.setAttribute("price", 12345L);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스를 이용한 함수사용</title>
</head>
<body>
오늘은 <b>${FormatUtil.number(price,'#,##0') }</b> 원 입니다.
</body>
</html>