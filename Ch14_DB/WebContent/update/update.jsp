<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String memberID=request.getParameter("memberID");
	String name=request.getParameter("name");

	int updateCount=0;
	//1.JDBC 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn=null;
		Statement stmt = null;
		ResultSet rs= null;
		
		try{
		//String url="jdbc:mysql://localhost:3306/jsp_db";
		String jdbcDriver = "jdbc:mysql://localhost:3306/jsp_db?"+
							"useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";


		String dbUser="jsp_db";
		String dbPass="1234";
		
		String query="update jsp_db.member set name='"+name+"' "+"where memberid='"+memberID+"'";
		
		//2.데이터베이스 커넥션 생성
		conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		//3.Statement 생성
		stmt=conn.createStatement();
		updateCount=stmt.executeUpdate(query);//업데이트 사항 점검
		}finally{
			if(stmt!=null) try{stmt.close();} catch(SQLException ex){}
			if(conn!=null) try{conn.close();} catch(SQLException ex){}
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 변경</title>
</head>
<body>
<%if(updateCount>0){%>
<%=memberID %>의 이름을 <%=name %>(으)로 변경
<%}else { %>
<%=memberID %>아이디가 존재하지 않음
<%} %>
</body>
</html>