<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
요청 처리과정에서 에러가 발생했습니다.<br>
빠른 시간내에 문제를해결하도록 하겠습니다. <br>
에러타입::<%=exception.getClass().getName()%><br>
에러메시지::<%=exception.getMessage() %>
</body>
</html>