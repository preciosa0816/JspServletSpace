<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int count;
	if (session.getAttribute("count") != null) {
		count = ((Integer) session.getAttribute("count")).intValue();
	}
	else {
		count = 0;
	}
	count++;
	session.setAttribute("count", new Integer(count));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
</head>
<body>
<h3>로그인에 성공했습니다.</h3>
<%=session.getAttribute("id") %>
<%=session.getAttribute("pw") %>
</body>
</html>