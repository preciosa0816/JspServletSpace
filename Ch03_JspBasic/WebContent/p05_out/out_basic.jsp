
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP:out객체(web browser 출력)</title>
</head>
<body>

버퍼크기: <%=out.getBufferSize() %><br>
남은크기: <%=out.getRemaining() %><br>
<!-- 출력방법1 -->
<%
	String name="hong";
	out.println(name+"입니다<br>");	
%>
<!-- 출력방법2 -->
<%=name %>입니다.<br>
<!-- 콘솔창에출력하기 -->
<%System.out.println(name+"입니다"); %>
</body>
</html>