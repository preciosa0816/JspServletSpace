<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--    (아래의) 에러페이지 처리의 우선순위가 가장 높다 -->
<%@ page errorPage="error.jsp" %> 

<%
	Date d = new Date();
	SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
	String strdate=sdf.format(d);
	//out.print(strdate);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 고의로 에러를 발생시킨 라인으로 strdate변수명을 다르게 입력했을때(compile Error=500) -->
Today is <%=strdate %>
<hr>
name parameter value::<%=request.getParameter("name").toUpperCase() %>
</body>
</html>