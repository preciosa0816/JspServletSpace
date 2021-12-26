<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	//직접 주소창에 써야 나옴
		String name = request.getParameter("name");//hong
		String value = request.getParameter("value");//20
		if (name != null && value != null) {
			//데이터가 있는 경우 application에 저장(모든 브라우저들이 사용가능하도록)
			application.setAttribute(name, value);
		}
	%>
	<%
		if (name != null && value != null) {
	%>
	application 기본 객체의 속성 설정:: <br>
	<%=name %> : <%=value %>
	<%
		} else {
	%>
	application 기본 객체의 속성 설정 안 함
	<%
		}
	%>
</body>
</html>