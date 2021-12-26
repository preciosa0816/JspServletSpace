<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
background:yellow;
width:300px;
}
</style>
</head>
<body>
<%
	String id= (String)request.getAttribute("id");
%>
<div>
<h3>관리자로 로그인 성공</h3><br>
성관리 <%=id %>님 환영합니다.
</div>
</body>
</html>