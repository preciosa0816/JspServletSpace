<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, tr,td{
 border:1px solid black;
}
</style>
</head>
<body>
<jsp:useBean id="joinBean" class="ex2.joinBean">
<jsp:setProperty name="joinBean" property="*"/>
<%-- 	<jsp:setProperty name="joinBean" property="id"></jsp:setProperty> --%>
<%-- 	<jsp:setProperty name="joinBean" property="pw"></jsp:setProperty> --%>
<%-- 	<jsp:setProperty name="joinBean" property="name"></jsp:setProperty> --%>
<%-- 	<jsp:setProperty name="joinBean" property="sex"></jsp:setProperty> --%>
<%-- 	<jsp:setProperty name="joinBean" property="age"></jsp:setProperty> --%>
<%-- 	<jsp:setProperty name="joinBean" property="email"></jsp:setProperty> --%>
</jsp:useBean>
<table>
<tr>
<td>아이디:</td>
<td><jsp:getProperty property="id" name="joinBean"/></td>
</tr>
<tr>
<td>비밀번호:</td>
<%-- <td><jsp:getProperty property="pw" name="joinBean"/></td> --%>
<td>${joinBean.pw}</td>
</tr>
<tr>
<td>이름:</td>
<td><jsp:getProperty property="name" name="joinBean"/></td>
</tr>
<tr>
<td>성별:</td>
<td><jsp:getProperty property="sex" name="joinBean"/></td>
</tr>
<tr>
<td>나이:</td>
<td><jsp:getProperty property="age" name="joinBean"/></td>
</tr>
<tr>
<td>이메일주소:</td>
<td><jsp:getProperty property="email" name="joinBean"/></td>
</tr>
</table>
</body>
</html>