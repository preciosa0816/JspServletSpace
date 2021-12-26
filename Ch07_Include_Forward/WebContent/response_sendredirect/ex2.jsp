<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
당신의 SessionID:: <%=session.getAttribute("id") %>입니다.<br>
당신의 SessionID(EL):: ${id}입니다.<br>
당신의 name::<%=request.getParameter("name") %><br>
당신의 name(EL):: ${param.name}입니다.<br>

</body>
</html>