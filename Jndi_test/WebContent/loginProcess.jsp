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
	
	
	Connection conn = null;
	PreparedStatement pstmt= null;
	ResultSet rs= null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt=conn.prepareStatement("SELECT * FROM member WHERE id=?");
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			if(pw.equals(rs.getString("password"))){
				session.setAttribute("id", id);
				
				out.println("<script>");
				out.println("location.href='main.jsp'");
				out.println("</script>");
			}
		}else{
			out.println("<script>");
			out.println("location.href='loginForm.jsp'");
			out.println("alert('로그인에 실패하였습니다')");
			out.println("</script>");
		}
		
	
	}catch(Exception e){
		e.printStackTrace();
	}

%>
</body>
</html>