<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
PrintWriter script = response.getWriter();

String id = request.getParameter("id");
String pw = request.getParameter("pw");
	
if(id.equals("test") && pw.equals("test")){	
	session.setAttribute("id", id);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy. MM .dd HH:mm:ss");
	Date date = new Date();
	String now = sdf.format(date);
	session.setAttribute("nowLoginTime", now);
	response.sendRedirect("left.jsp");
}else{ 	
	script.println("<script>");
	script.println("alert('아이디 또는 비밀번호가 틀립니다.')");
	script.println("location.href = 'left.jsp'");
	script.println("</script>"); 
}
%>
