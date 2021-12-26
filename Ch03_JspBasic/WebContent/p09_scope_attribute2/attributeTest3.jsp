<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, td, th{
border:1px solid black;
}
</style>
</head>
<body>
<h3>영역과 속성 테스트</h3><br>
<table>
<tr>
<td colspan="2"><b>Application 영역에 저장된 내용들</b></td>
</tr>
<tr>
<td>이름</td>
<td><%=application.getAttribute("name") %></td>
</tr>
<tr>
<td>아이디</td>
<td><%=application.getAttribute("id") %></td>
</tr>
</table>
<br>
<table>
<tr>
<td colspan="2"><b>Session 영역에 저장된 내용들</b></td>
</tr>


<%-- <% --%>
<!--  Enumeration <String> e = session.getAttributeNames(); -->
<!--  while(e.hasMoreElements()){ -->
<!--  	String attrname= e.nextElement(); -->
<!--  	String value=(String)session.getAttribute(attrname); -->

<%-- %> --%>
<!-- <tr> -->
<%-- <td><%=attrname %></td> --%>
<%-- <td><%=value %></td> --%>
<!-- </tr> -->
<%-- <%} %> --%>

<tr>
<td>address</td>
<td><%=session.getAttribute("haddr") %></td>
</tr>
<tr>
<td>tel</td>
<td><%=session.getAttribute("tel") %></td>
</tr>
<tr>
<td>email</td>
<td><%=session.getAttribute("eaddr") %></td>
</tr>

</table>

</body>
</html>