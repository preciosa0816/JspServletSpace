<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page errorPage="/error/nonNumberError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//String a = request.getParameter("a");
	//request.setAttribute("a", a);
	int A=Integer.parseInt(request.getParameter("a"));
	//String b = request.getParameter("a");
	//request.setAttribute("b", b);
	int B = Integer.parseInt(request.getParameter("b"));
	//out.print(A+B);
%>
계산결과: <%=A+B %>
</body>
</html>