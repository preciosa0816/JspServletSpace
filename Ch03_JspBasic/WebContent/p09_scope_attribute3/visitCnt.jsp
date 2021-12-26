<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int count;
	if (session.getAttribute("count") != null) {
		count = (Integer) session.getAttribute("count");
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
<title>Insert title here</title>
</head>
<body>
현재까지의 클릭한 수 : <%=count %>

</body>
</html>