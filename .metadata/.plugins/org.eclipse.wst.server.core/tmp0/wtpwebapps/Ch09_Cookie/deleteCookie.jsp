<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] c = request.getCookies();
	if(c!=null&&c.length>0){
		for(int i =0; i<c.length; i++){
			if(c[i].getName().equals("cookieName")){
				Cookie cookie = new Cookie("cookieName","");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
	
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
delete Cookie named "cookieName"
</body>
</html>