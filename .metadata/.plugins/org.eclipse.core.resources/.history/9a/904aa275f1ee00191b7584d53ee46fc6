<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="login.Login"
    %>
<%
	Login lg= new Login();
	lg.setId("hong");
	lg.setPw("1234");
%>
<jsp:useBean id="test" class="login.Login" scope="page">
	<jsp:setProperty name="test" property="id"/>
	<jsp:setProperty name="test" property="pw"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>Login Information</h4>
ID::<jsp:getProperty property="id" name="test"/><br>
PW(JSP)::<jsp:getProperty property="pw" name="test"/><br>
PW(EL)::${test.pw}<br>
PW(JAVA)::<%=test.getPw()%><br><br><br>
PW(JAVA)::<%=lg.getPw()%>

</body>
</html>