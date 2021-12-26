<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Date time = new Date();
	SimpleDateFormat sdf= new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>left.jsp</h3>
<form action="LogOut.jsp" method="post">
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals(pw)){
	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
	out.println(id+"님 로그인 중<br>");
	time.setTime(session.getCreationTime());
	%>
	<input type="submit" value="LOGOUT"><br><hr>
	<%
	out.println("접속시간 : "+sdf.format(time)+"<br>");
	time.setTime(session.getLastAccessedTime());
	out.println("마지막 접근시간: "+sdf.format(time)+"<br>");
}else{
	%>
	<script> alert("입력하신 정보가 일치하지 않습니다."); 
			history.go(-1);  
	</script>
	<%
}
%>
</form>
</body>
</html>