<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
background:pink;
width:300px;
}
</style>
</head>
<body>
<%
	String id= (String)request.getAttribute("id");
%>
<div>
<h3>사용자로 로그인 성공</h3><br>
전고객<br>
 <%=id %>님 환영합니다.
</div>
</body>
</html>