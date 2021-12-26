<%@page import="basic.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Member m= new Member();
	m.setName("name1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- //JSTL tag를 사용하기 위해서는 다운로드 받고 library 장착해야함 :
	https://mvnrepository.com/artifact/javax.servlet/jstl/1.2 -->
<c:set var="m" value="<%=m %>"></c:set>
<c:set var="name" value="#{m.name}"></c:set>
${name}<br>
<hr>
<%m.setName("name2"); %>
${name}<br>
m.getName():: <%=m.getName() %><br>
\#{name }:: deffered Expression(실제로 값이 필요한 시점에 값을 계산)::${name}<br>
<%m.setName("name3"); %>
${name}





</body>
</html>