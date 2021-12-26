<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page='<%=request.getParameter("forwardPage") %>'>
	<jsp:param value='<%=request.getParameter("name") %>' name="name"/>
	<jsp:param value='<%=request.getParameter("age") %>' name="age"/>
	<jsp:param value='<%=request.getParameter("address") %>' name="address"/>
	<jsp:param value='010-1234-5678' name="tel"/>
</jsp:forward>
</body>
</html>