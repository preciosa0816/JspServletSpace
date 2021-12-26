<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>EL Cookie 내장객체 예제</h4>
<br>
<%
Cookie[] cookies =request.getCookies();
String value=null;
for(Cookie c:cookies){
	if(c.getName().equals("MyCookie")){
	value=c.getValue();
	}
}
%>
MyCookie 쿠키 값:<%=value %><br>

MyCookie 쿠키 값:${cookie.MyCookie.value }<br>
MyCookie 쿠키 값:${cookie['MyCookie']['value'] }<br>
MyCookie 유지시간:${cookie.MyCookie.maxAge }<br>
MyCookie 쿠키:${cookie.MyCookie }<br>
</body>
</html>