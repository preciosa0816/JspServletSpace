<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 기본 객체</title>
</head>
<body>
	<%
	
	HttpServletRequest r=(HttpServletRequest)pageContext.getRequest();
%>
	request 기본 객체와 pageContext.getRequest()의 동일 여부:
	<%=request==r %>
	<br> pageContext.getOut()메서드를 사용한 데이터 출력:
	<%pageContext.getOut().println("HI!"); 
	//pageContext.getOut().println()=out.println()%>
</body>
</html>