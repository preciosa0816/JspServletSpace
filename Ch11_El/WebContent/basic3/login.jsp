<%@page import="basic.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <% --%>
<!-- // 	LoginBean login = new LoginBean();	 -->

<!-- // 	String id=request.getParameter("id"); -->
<!-- // 	login.setUserid(id); -->
<!-- // 	String pw =request.getParameter("pw"); -->
<!-- // 	login.setPassword(pw); -->
	
<!-- // 	request.setAttribute("login", login); -->
<%-- %> --%>
<jsp:useBean id="login" class="basic.LoginBean"></jsp:useBean>
<jsp:setProperty property="*" name="login"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL실습</title>
</head>
<body>
<h4>ID&PW를 EL방식으로 입력받기</h4>
사용자 아이디: ${login.userid}<br>
사용자 비밀번호: ${login.password}<br>
</body>
</html>