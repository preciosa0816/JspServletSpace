<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo"/>
<%
	member.setId("ABCD");
	member.setPw("1234");
	member.setName("hong");
	//member.setRegisterDate();
	member.setEmail("a@a.com");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:forward page="useObject.jsp">
<jsp:param value="alphago" name="id"/>
</jsp:forward>

</body>
</html>