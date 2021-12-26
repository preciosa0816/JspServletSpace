<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<td colspan="2">회원 목록</td>
		</tr>

		<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs= null;
		
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			pstmt=conn.prepareStatement("select * from MEMBER order by id");
			rs=pstmt.executeQuery();

			while(rs.next()){
	%>
	<tr>
		<td><a href="member_info.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("id") %></a></td>
		<td><a href="member_delete.jsp?id=<%=rs.getString("id") %>">삭제</a></td>
	</tr>
	<%
		}
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException ex){}
		if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
		//커넥션풀에서 구한 Connection의 close()메서드를 호출시 DB와의 연결을 끊지않고 해당커넥션을 풀에 반환함
	}
	%>	
	</table>

</body>
</html>