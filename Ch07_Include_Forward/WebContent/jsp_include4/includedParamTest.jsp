<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<body>
<%
Enumeration<String> names=request.getParameterNames();
while(names.hasMoreElements()){
	String name=names.nextElement();
	String k=request.getParameter(name);
	out.println(name+":"+k);
}
String name=request.getParameter("name");
String pageName=request.getParameter("pageName");
	
%>
<br>
파라미터 값을 전달받아 실행되는<br>
포함되는 페이지는 <%=pageName %>입니다.<br>
<b><%=name %>님 감사합니다.</b>
