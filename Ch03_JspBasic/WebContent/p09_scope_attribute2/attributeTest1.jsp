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
<h3>영역과 속성 테스트</h3><br>
<b>홍길동님 반갑습니다</b>
<b>홍길동님의 아이디는 hong입니다.</b>
<form action="attributeTest2.jsp" method="post">
<%
request.setCharacterEncoding("UTF-8");
String name= request.getParameter("name");
String id= request.getParameter("id");
application.setAttribute("name", name);
application.setAttribute("id", id);
%>
<table>
<tr>
<td colspan="2"><b>Session 영역에서 저장할 내용들</b></td>
</tr>
<tr>
<td>email 주소</td>
<td><input type="text" name="eaddr" id="eaddr"></td>

</tr>
<tr>
<td>집주소</td>
<td><input type="text" name="haddr" id="haddr"></td>

</tr>
<tr>
<td>전화번호</td>
<td><input type="text" name="tel" id="tel"></td>

</tr>
<tr>
<td colspan="2"><input type="submit" value="전송" ></td>

</tr>
</table>
</form>
</body>
</html>