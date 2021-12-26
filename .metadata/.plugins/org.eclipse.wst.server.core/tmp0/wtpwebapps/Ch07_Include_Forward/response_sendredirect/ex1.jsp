<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디를 입력하세요
<form action="" method="post">
<table>
	<tr>
		<td>ID::<input type="text" name="id">
		<input type="submit" value="login">
		</td>
	</tr>
</table>
</form>
<% 
	
	String user="";
	if(request.getParameter("id")!=null){
		user=request.getParameter("id");
		session.setAttribute("id", user);
		response.sendRedirect("ex2.jsp?name=hong");//주소란이 ex2.jsp로 감
		//parameter를 통한 값 전달하기
		
		
	}

%>

</body>
</html>