<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String name=request.getParameter("name"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ID(JSP) :: <%=request.getParameter("name") %><hr>
ID(EL(name)) :: ${name}<hr>
ID(EL(param:name)) :: ${param.name}<hr><br>
</body>
</html>