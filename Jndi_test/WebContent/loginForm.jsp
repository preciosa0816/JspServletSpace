<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr, td {
	text-align: center;
	width: 100px;
}

input[type=submit], input[type=reset] {
	background-color: white;
	border: none;
	color: black;
	font-size: 15px;
	text-decoration: underline;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
</head>
<body>
	<form action="loginProcess.jsp" name="loginform" method="post">
		<table border="1">
			<tr>
				<td colspan="2"><h3>Login Page</h3></td>
			</tr>
			<tr>
				<td>ID :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>PW :</td>
				<td><input type="password" name="password"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Login"> <a
					href="joinForm.jsp">Join</a></td>
			</tr>
		</table>
	</form>
</body>
</html>