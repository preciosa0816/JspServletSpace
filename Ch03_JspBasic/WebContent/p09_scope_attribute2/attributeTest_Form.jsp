<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, td, th{
border:1px solid black;
}
</style>
</head>
<body>
<form action="attributeTest1.jsp" method="post">
<table>
<tr>
<td colspan="2"><b>Application 영역에서 저장할 내용들</b></td>
</tr>
<tr>
<td>이름</td>
<td><input type="text" name="name" id="name"></td>

</tr>
<tr>
<td>아이디</td>
<td><input type="text" name="id" id="id"></td>

</tr>
<tr>
<td colspan="2"><input type="submit" value="전송" ></td>

</tr>
</table>
</form>
</body>
</html>