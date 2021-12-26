<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
<title>Insert title here</title>
</head>
<body>

<% 
request.setCharacterEncoding("UTF-8");
String id=(String)request.getParameter("id");
String pw=(String)request.getParameter("pw");


	if(id.equals("hong")&&pw.equals("1234")){
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		%>
		<jsp:forward page="loginSuccess.jsp"/>
			
		
		<%
	}else{
		request.setAttribute("id", id);
		//pageContext.forward("loginFail.jsp");
		%>
		<jsp:forward page="loginFail.jsp"/> 		
		<%
	}
%>

</body>
</html>