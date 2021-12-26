<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("page", "페이지 영역에 저장된 데이터");
	int count;
	if (session.getAttribute("count") != null) {
		count = ((Integer) session.getAttribute("count")).intValue();
	}
	else {
		count = 0;
	}
	count++;
	session.setAttribute("count", new Integer(count));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page Scope Test</title>
</head>
<body>
<%=pageContext.getAttribute("page") %>

</body>
</html>