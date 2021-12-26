<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table,td,tr{
border: 1px solid black;
}
td,tr{
width:150px;
}
</style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");%>
<table>
<tr>
<td>학번</td>
<td><%=request.getParameter("id") %></td>
</tr>
<tr>
<td>이름</td>
<td><%=request.getParameter("name") %></td>
</tr>
<tr>
<td>학년</td>

<td><%=request.getParameter("grade")%></td>
</tr>
<tr>
<td>선택과목</td>
<td><%=request.getParameter("subject")%></td>
</tr>
</table>
	<hr>
	getPathInfo()::<%=request.getPathInfo() %><br>
	getRequestURI()::<%=request.getRequestURI() %><br>
	getRequestURL()::<%=request.getRequestURL() %><br>
	getServletPath()::<%=request.getServletPath() %><br>
	getServerName()::<%=request.getServerName() %><br>
	
	
	
</body>
</html>