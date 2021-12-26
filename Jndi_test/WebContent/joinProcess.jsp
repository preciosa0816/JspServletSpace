<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
	%>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Context init = new InitialContext();
			Context envContext  = (Context)init.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/OracleDB");
			//DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			pstmt=conn.prepareStatement("select * from member where id=?");
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(!rs.next()) {
				pstmt = conn.prepareStatement("INSERT INTO MEMBER VALUES(?,?,?,?,?,?)");
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				pstmt.setString(3, name);
				pstmt.setInt(4, age);
				pstmt.setString(5, gender);
				pstmt.setString(6, email);
				pstmt.executeQuery();	
				
				out.println("<script>");
				out.println("alert('가입에 성공하였습니다.')");
				out.println("location.href='loginForm.jsp'");

				out.println("</script>");
			} else {
				out.println("<script>");
				out.println("location.href='joinForm.jsp'");
				out.println("alert('동일한 아이디가 존재합니다.')");
				out.println("</script>");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	%>

</body>
</html>