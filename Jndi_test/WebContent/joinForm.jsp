<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
<style type="text/css">
	tr, td{
	text-align:center;
	width:100px;
	}

input[type=submit], input[type=reset] {
  background-color: white;
  border: none;
  color: black;
	font-size:15px;
  text-decoration: underline;
  margin: 4px 2px;
  cursor: pointer;
}

</style>
</head>
<body>
<form action="joinProcess.jsp" name="joinform" method="post">
<table border="1">
	<tr>
		<td colspan="2"><h3>Join Page</h3></td>
	</tr>
	<tr>
		<td>ID : </td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>PW : </td>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td>Name : </td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>Age : </td>
		<td><input type="text" name="age"></td>
	</tr>
	<tr>
		<td>gender : </td>
		<td><input type="radio" name="gender" value="male"checked>male 
		<input type="radio" name="gender" value="female">female</td>
		
	</tr>
	<tr>
		<td>email : </td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Join"> <input type="reset" value="Reset"></td>
	</tr>
</table>
</form>
</body>
</html>