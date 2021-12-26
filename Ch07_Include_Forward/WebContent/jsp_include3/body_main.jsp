<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
</head>
<body>
<!-- 주소에 name 값을 입력해준다 (?name="cbk") -->
<!-- http://localhost:8080/CH07_Include_Forward/jsp_include3/body_main.jsp?name=cbk-->
'name' parameter value before include: <%=request.getParameter("name") %>
<hr>

<jsp:include page="body_sub.jsp" flush="false">
	<jsp:param name="name" value="최범균"/>
</jsp:include>
<hr/>
'name' parameter value after include:<%=request.getParameter("name") %>
</body>
</html>