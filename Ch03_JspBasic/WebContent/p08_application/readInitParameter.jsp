<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<%
	//application.getInitParameter("logEnabled");
	Enumeration<String> ip =application.getInitParameterNames();
	while(ip.hasMoreElements()){
		String ip_name=(String)ip.nextElement();
		
	%>
	<li><%=ip_name %>::<%=application.getInitParameter(ip_name) %></li>
	</ul>
	<%
	}
	%>
</body>
</html>