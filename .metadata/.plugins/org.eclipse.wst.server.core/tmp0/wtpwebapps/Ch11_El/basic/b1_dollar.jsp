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
<c:set var="name" value="${m.name}"></c:set>
<%m.setName("name2"); %>
${name}<br>
m.getName():: <%=m.getName() %><br>
\${name }:: Immediate Expression(표현식이 실행되는 시점에 곧바로 계산)<br>
${name}<br>

</body>
</html>