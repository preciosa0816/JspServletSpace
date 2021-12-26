<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext1</title>
</head>
<body>
<%
	pageContext.forward("pageContext2.jsp");
//http://localhost:8080/p07_pagecontext/pageContext1.jsp
//forward 사용시 페이지 명칭은 그대로임. 외부파일을 가져올뿐 
%>
</body>
</html>