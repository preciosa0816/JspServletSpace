<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie c1= new Cookie("path1",URLEncoder.encode("path: /Ch09_Cookie/path1","utf-8"));
	c1.setPath("/Ch09_Cookie/path1");
	response.addCookie(c1);
	
	Cookie c2= new Cookie("path2",URLEncoder.encode("path: ","utf-8"));
	response.addCookie(c2);
	
	Cookie c3= new Cookie("path3",URLEncoder.encode("path: /","utf-8"));
	c3.setPath("/");
	response.addCookie(c3);
	
	Cookie c4= new Cookie("path4",URLEncoder.encode("path: /Ch09_Cookie/path2","utf-8"));
	c4.setPath("/Ch09_Cookie/path2");
	response.addCookie(c4);
	

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
다음과 같이 쿠키 생성함<br>
<%=c1.getName() %> = <%=c1.getValue() %>
[<%=c1.getPath() %>]<br>
<%=c2.getName() %> = <%=c2.getValue() %>
[<%=c2.getPath() %>]<br>
<%=c3.getName() %> = <%=c3.getValue() %>
[<%=c3.getPath() %>]<br>
<%=c4.getName() %> = <%=c4.getValue() %>
[<%=c4.getPath() %>]<br>


</body>
</html>