<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="joinChk.jsp" method="post">
<table>
<tr>
<td>아이디:</td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<td>비밀번호:</td>
<td><input type="password" name="pw" id="pw"></td>
</tr>
<tr>
<td>이름:</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>성별:</td>
<td><input type="radio" name="sex" value="male">남 
<input type="radio" name="sex" value="female" checked="checked">여</td>
</tr>
<tr>
<td>나이:</td>
<td><input type="text" name="age"></td>
</tr>
<tr>
<td>이메일주소:</td>
<td><input type="text" name="email"></td>
</tr>
</table>
<input type="submit" value="join">
<input type="reset" value="reset">
</form>
</body>
</html>