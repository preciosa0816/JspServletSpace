<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>

<b>requst.getParameterMap()</b><br>
<%
Map<String, String[]> pm=request.getParameterMap();
String [] nameParam=(String [])pm.get("name");
if(nameParam!=null){
	%>
	name:: <%=nameParam[0] %>
	<%} %>
	<br>
<%
String [] addParam=(String [])pm.get("address");
if(addParam!=null){
	%>
	addParam:: <%=addParam[0] %>
	<%} %>

<br>
<%
String [] petParam=(String [])pm.get("pet");
if(petParam!=null){
	for(int i=0; i<petParam.length;i++){
	%>
	petParam:: <%=petParam[i]  %><br>
	<%} } %>

<hr>
<b>request.getParameter() 메서드 사용</b><br>
name 파라미터 = <%=request.getParameter("name") %><br>
address 파라미터 = <%=request.getParameter("address") %><br>
<p>
<b>request.getParameterValues()메서드 사용</b><br>
<% String values[]=request.getParameterValues("pet");
if(values!=null){for(int i=0; i<values.length; i++){%><%=values[i] %> <% }}%>
<hr>
<b>request.getParameterNames() 메서드 사용</b><br>
<% 
Enumeration paramEnum=request.getParameterNames(); 
while(paramEnum.hasMoreElements()){
	String name=(String)paramEnum.nextElement();
	%><%=name %>
<%}
%>
</body>
</html>




















