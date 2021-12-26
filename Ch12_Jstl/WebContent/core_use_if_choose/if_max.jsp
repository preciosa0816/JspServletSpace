<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num1=10;int num2=20;
	request.setAttribute("num1", num1);
	request.setAttribute("num2", num2);
	
%>

<c:if test="${num1 -num2 >=0}">
	${num1 }
</c:if>
<c:if test="${num1 -num2 <0}">
	${num2 }
</c:if>
<c:if test="${param.num1 -param.num2 >=0}">
	${param.num1 }
</c:if>
<c:if test="${param.num1 -param.num2 <0}">
	${param.num2 }
</c:if>
</body>
</html>