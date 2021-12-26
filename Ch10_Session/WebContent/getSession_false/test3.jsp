<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	session=request.getSession(false); //
	if(session!=null)
	session.invalidate();//session 종료
	
	response.sendRedirect("index.jsp");//session이 있을 때

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
request.getSession():: 현재 세션이 존재하면 기존 세션을 리턴, 없으면 새로 생성 <br>
request.getSession(true):: request에 대한 새로운 session을 생성후 리턴 <br>
request.getSession(false):: 현재 세션이 존재하면 기존 세션을 리턴,없으면 NULL<br>
</body>
</html>