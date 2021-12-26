<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
	
	
	String UserID="hong";
	String UserPS="1234";
	String UserName="홍길동";
	
	if(id.equals(UserID)&&pw.equals(UserPS)){
		session.setAttribute("uName", UserName);
		response.sendRedirect("result.jsp");
	}else{
		//out.println("window.alert('로그인정보 불일치')");
		response.sendRedirect("loginForm.jsp");
		
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="move.jsp">Click Here</a>



</body>
</html>