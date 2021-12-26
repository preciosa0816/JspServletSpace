<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String checkName=null;
	checkName= (String)session.getAttribute("uName");
	if(checkName==null){
		response.sendRedirect("loginForm.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 유무 확인 & 성공처리</title>
</head>
<body>
Welcome	<%=checkName %>!<br>
<a href="https://www.google.com">Google</a>
</body>
</html>