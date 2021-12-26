<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%=id %>(으)로 로그인 하셨습니다.</h3>
<%
if(id.equals("admin")){
%>
	<a href="member_list.jsp">관리자 모드 접속(회원 목록 보기)</a>
<%
}
%>
</body>
</html>