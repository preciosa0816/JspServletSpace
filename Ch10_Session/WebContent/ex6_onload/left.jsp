<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>left.jsp</h1> 
<%
	if(session.getAttribute("id") != null){
		String id = session.getAttribute("id").toString();	
		String nowLoginTime = session.getAttribute("nowLoginTime").toString();
		String lastLoginTime = null;
		if(session.getAttribute("lastLoginTime") == null){
			lastLoginTime = "";
		}else{
			lastLoginTime = session.getAttribute("lastLoginTime").toString();
		}
%>
	<%= id %>님 로그인 중
	<form action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	<hr color="red">
	로그인 시간 : <%= nowLoginTime %><br>
	최근 로그인 시간 : <%= lastLoginTime %> 
	
<%
	} else{	
%>
	<form id="loginForm" method="post" action="loginresult.jsp">
		ID : <input type="text" name="id"><br>
		PW : <input type="password" name="pw"><br>
		<input type="submit" value="로그인">
	</form>
<%
	}
%>
</body>
</html>