<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
MEMBER 테이블의 내용
<table width="100%" border="1">
	<tr>
	<td>이름</td>
	<td>아이디</td>
	<td>이메일</td>
	</tr>
	<%
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try{
			String jdbcDriver="jdbc:apache:commons:dbcp:jsp_db";
			String query="select * from jsp_db.MEMBER order by memberid";
			conn=DriverManager.getConnection(jdbcDriver);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			while(rs.next()){
	%>
	<tr>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("memberid") %></td>
		<td><%=rs.getString("email") %></td>
	</tr>
	<%
		}
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException ex){}
		if(stmt!=null)try{stmt.close();}catch(SQLException ex){}
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
		//커넥션풀에서 구한 Connection의 close()메서드를 호출시 DB와의 연결을 끊지않고 해당커넥션을 풀에 반환함
	}
	%>	
</table>
</body>
</html>