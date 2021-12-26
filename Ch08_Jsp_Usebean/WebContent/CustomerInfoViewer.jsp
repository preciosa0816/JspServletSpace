<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="pinfo" class="servlet_JspUseBean.PersonalInfo" scope="request"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Name:: hong<br>
Sex:: male<br>
Age:: 24<br><br>
Name:: <jsp:getProperty property="name" name="pinfo"/><br>
Sex:: <%=pinfo.getGender() %><br>
Age:: <jsp:getProperty property="age" name="pinfo"/><br>
Age:: ${pinfo.age}<br>
</body>
</html>