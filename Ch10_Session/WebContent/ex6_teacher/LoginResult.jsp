<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String dbId = "jsp", dbPw = "1234";	
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		if ( dbId.equals(id.trim()) && dbPw.equals(pw.trim()) ){ //정보가 일치하면
			
			//세션의 유효시간을 30초변경
			//session.setMaxInactiveInterval(30); //30초로 변경
			
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			//response.sendRedirect("index.jsp");
			out.print("<script>");
			out.print("top.location.href='index.jsp';"); 
			out.print("</script>");
		}else{
		
			//out.print("<script>");
			//out.print("alert('입력하신 정보기 일치하지 않습니다')");
			//out.print("history.back();"); //뒤로
			//out.print("</script>");
		%>
			<script>
				alert("입력하신 정보기 일치하지 않습니다");
				top.history.back(); //뒤로
			</script>
		<%
		}
		%>
</body>
</html>