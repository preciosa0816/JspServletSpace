<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/member/login.jsp" method="post">
ID <input type="text" name="id" size="10"> 
PW <input type="password" name="password" size="10">
<input type="submit" value="login">
</form>
</body>
</html>