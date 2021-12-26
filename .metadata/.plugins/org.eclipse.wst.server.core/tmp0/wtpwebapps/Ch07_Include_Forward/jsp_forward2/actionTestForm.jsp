<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="actionTest.jsp" method="post">
ID:<input type="text" name="id"><br>
PW:<input type="password" name="pw"><br>
<input type="radio" name="check" id="user" value="user" checked>사용자 
<input type="radio" name="check" id="manager" value="manager">관리자<br>
<input type="submit" value="login">
</form>
</body>
</html>