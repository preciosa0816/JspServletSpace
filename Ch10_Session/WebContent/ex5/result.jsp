<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입결과</h3>
<%
	String result=request.getParameter("RESULT");
	if(result.equals("SUCCESS")){ 
 		%> 		
		가입되었습니다.
 		<% 
 	}else{
 		%>
 		가입에 실패하였습니다.
 		<% 
 	}
%>

</body>
</html>