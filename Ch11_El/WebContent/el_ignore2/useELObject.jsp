<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
\#{\}형식은 EL값을 분석하지 않고 일반문자열로 처리(\${\}만 EL로 처리됨)<br>
요청 URI: #{pageContext.request.requestURI }<br>
request의 name 속성:${requestScope.name }<br>
code 파라미터:${param.code }
<hr>
EL비활성화 하는 방법1: web.xml<br>
EL비활성화 하는 방법2: page directive에 <%-- <%@page isELIgnored="true" %> --%> 설정하기 <br>

</body>
</html>