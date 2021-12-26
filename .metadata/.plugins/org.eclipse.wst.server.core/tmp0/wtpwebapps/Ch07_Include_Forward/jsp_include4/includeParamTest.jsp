<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "홍길동";
	String pageName="includedParamTest.jsp";
%>
including page: includeParamTest.jsp<br>
포함되는 페이지에 parameter value를 전달합니다.<br>
<hr>
<jsp:include page="<%=pageName %>" flush="false">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="<%=pageName %>" name="pageName"/>
</jsp:include>
<hr>
includeParamTest.jsp의 나머지 내용

</body>
</html>