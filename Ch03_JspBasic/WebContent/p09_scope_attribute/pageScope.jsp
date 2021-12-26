<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	pageContext.setAttribute("name", "hong");
	request.setAttribute("id", "abc");
	session.setAttribute("id2", "test");
	application.setAttribute("id3", "test2");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
pageScope::<%=pageContext.getAttribute("name")%>			<br>
pageScope(EL)::${pageScope.name}			<br><br>
requestScope::<%=request.getAttribute("id") %>		<br>
requestScope(EL)::${requestScope.id}		<br><br>
sessionScope::<%=session.getAttribute("id2") %>		<br>
sessionScope(EL)::${sessionScope.id2}			<br><br>
applicationScope::<%=application.getAttribute("id3") %>		<br>
applicationScope(EL)::${applicationScope.id3}			<br>
<!-- =>pageScope에만 hong 나옴(JSP영역에만 저장했으므로) -->
</body>
</html>