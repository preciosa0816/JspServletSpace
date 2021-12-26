<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int count;
	if (session.getAttribute("count") != null) {
		count = ((Integer) session.getAttribute("count")).intValue();
	}
	else {
		count = 0;
	}
	count++;
	session.setAttribute("count", new Integer(count));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<style>
label {
	width: 100px;
	margin: 10px;
}
</style>
</head>
<body>

	<form action="loginProc.jsp" method="post">
		<label>아이디 </label><input type="text" name="id"><br> <label>비
			번 </label><input type="password" name="pw"><br> <input
			type="submit" value="로그인">

	</form>

</body>
</html>