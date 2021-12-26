<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름:ID 회원님 안녕하세요!<br>
<%=member.getName() %> : <%=member.getId() %>회원님 안녕하세요!<br>
JSP:EL::${member.name}<br>
JSP:useBean::<jsp:getProperty property="id" name="member"/><br>
JSP:Parameter::<%=request.getParameter("id") %><br>
JSP:Attribute::<%=request.getAttribute("id") %><br>
</body>
</html>