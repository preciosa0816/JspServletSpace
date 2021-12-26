<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="true" %> 
<%
	request.setAttribute("name", "hong");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL비활성화 옵션 추가하기 </title>
</head>
<body>
요청 URI: #{pageContext.request.requestURI }<br>
request의 name 속성:${requestScope.name }<br>
code 파라미터:${param.name }<br>
<hr>
EL비활성화 하는 방법1: web.xml<br>
EL비활성화 하는 방법2: page directive에 <%-- <%@page isELIgnored="true" %> --%> 설정하기 <br>
</body>
</html>