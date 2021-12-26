<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
This is Error page.<br> 
we will fix this ASAP<br>
sorry for your inconvenience<br>
<br>
Error type: <%=exception.getClass().getName() %><br>
Error message: <%=exception.getMessage() %>

</body>
</html>