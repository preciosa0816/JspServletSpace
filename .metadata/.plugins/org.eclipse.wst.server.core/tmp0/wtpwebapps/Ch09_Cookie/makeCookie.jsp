<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("cookieName",URLEncoder.encode("홍길동", "utf-8"));
	response.addCookie(cookie);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 생성</title>
</head>
<body>
Cookie::web browser가 보관하고 있는 데이터로 웹서버에 요청시 
쿠키를 함께 전송해서 방문증명 면제.<br> 
웹서버는 전송받은 쿠키를 사용해서 필요한 데이터를 읽어올 수 있다.<br>
 API:javax.servlet.http.Cookie<hr>
쿠키이름: <%=cookie.getName() %><br>
쿠키값: <%=cookie.getValue() %><br>
</body>
</html>