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
	String info=application.getServerInfo();
	String path=application.getRealPath("/");
	application.log("log record: test ~ing"); //콘솔창 출력
	
%>
<%=info %><br>
<%=path %><br>

</body>
</html>