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
	String id = (String)session.getAttribute("id"); //SessionLoginServlet 에서 name을 "id"로 설정함
%>
<%=id %>님 환영합니다.
</body>
</html>