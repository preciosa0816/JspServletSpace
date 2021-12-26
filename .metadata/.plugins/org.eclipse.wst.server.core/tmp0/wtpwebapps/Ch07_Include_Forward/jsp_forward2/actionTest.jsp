<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String check=(String)request.getParameter("check");
	String id= (String)request.getParameter("id");
	if(check.equals("user")){
	request.setAttribute("id", id);
	%>
	
		<jsp:forward page="userMain.jsp"></jsp:forward>
		
		<%}else{request.setAttribute("id", id);%>
		<jsp:forward page="managerMain.jsp"></jsp:forward>
	<%}
%>
</body>
</html>