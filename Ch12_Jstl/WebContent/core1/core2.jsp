<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<c:set var="login" value="abcd" scope="session"></c:set>
<c:set var="pw" value="1234"></c:set>
<h4>변수선언&출력</h4>
Session::<%=session.getAttribute("login") %> <br>
Login:: <c:out value="${login }" ></c:out><br>
Password::<c:out value="${pw }" ></c:out><br>

<hr>
<c:remove var="login" scope="session"/>
login::<c:out value="${login }"/> <br>

<h4>오류 메시지 출력 </h4>
10/0
<c:catch var="errmsg"><%=10/0 %></c:catch>
<c:out value="${errmsg }"/>
</body>
</html>