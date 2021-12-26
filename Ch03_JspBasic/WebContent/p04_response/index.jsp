<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String name=request.getParameter("memberid"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ID(JSP) :: <%=request.getParameter("memberid") %><hr>
ID(EL(name)) :: ${name}<hr>
ID(EL(param:name)) :: ${param.memberid}<hr><br>
</body>
</html>