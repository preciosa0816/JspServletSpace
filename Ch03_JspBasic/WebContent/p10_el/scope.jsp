<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(Expression Language:표현언어)</title>
</head>
<body>
<%
	//현재페이지에 저장
	pageContext.setAttribute("pageName", "pageValue");
	//http요청한 페이지및 이동할 페이지(include, forward)
	request.setAttribute("requestName", "requestValue");
	//하나의 웹 브라우저가 켜진 상태에서 있는 페이지 저장
	session.setAttribute("sessionName", "sessionValue");
	//서버가 켜져있는 동안 
	application.setAttribute("applicationName", "applicationValue");
		
%>
pageName의 속성값(JSP) :: <%=pageContext.getAttribute("pageName") %><br>
pageName의 속성값(EL) :: ${pageScope.pageName}<br><br>
requestName의 속성값(JSP) :: <%=request.getAttribute("requestName") %><br>
requestName의 속성값(EL) :: ${requestScope.requestName}<br><br>
sessionName의 속성값(JSP) :: <%=session.getAttribute("sessionName") %><br>
sessionName의 속성값(EL) :: ${sessionScope.sessionName}<br><br>
applicationName의 속성값(JSP) :: <%=application.getAttribute("applicationName") %><br>
applicationName의 속성값(EL) :: ${applicationScope.applicationName}<br><br>
</body>
</html>