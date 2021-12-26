<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/login.jsp">
ID : <input type="text" name="memberId">
PW : <input type="password" name="password">
<input type="submit" value="login">
</form>
</body>
</html>