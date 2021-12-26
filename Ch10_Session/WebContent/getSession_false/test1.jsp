<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session = request.getSession();//getsession:
	String id=request.getParameter("id");
	request.getSession().setAttribute("id", id);	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Session</title>
</head>
<body>
Session ID :: <%=session.getId() %><br>
<a href="test2.jsp">View session contents</a>


</body>
</html>