<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NullParameterFilter Test</title>
</head>
<body>
id parameter: <%=request.getParameter("id") %><br>
name parameter: <%=request.getParameter("name") %><br>
member parameter: <%=request.getParameter("member") %><br>
</body>
</html>