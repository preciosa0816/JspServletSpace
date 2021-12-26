<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="input.html" method="post">
<%=exception.getMessage() %><br>
<%=exception.getClass().getName() %><br>
Non Number Error!!(nonNumberErr.jsp)<br>
데이터를 입력하지 않으셨거나<br>
잘못된 데이터를 입력하셨습니다.<br>
다시 입력해주세요<br>
<input type="submit" value="다시입력">
</form>
</body>
</html>