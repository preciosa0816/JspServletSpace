<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("utf-8");

	String memberID=request.getParameter("memberID");
	String password=request.getParameter("password");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn=null;
	PreparedStatement pstmt=null; //자동으로 값변환, 간결한 코드를 위해 사용 
	
	try{
		//String url="jdbc:mysql://localhost:3306/jsp_db";
		String jdbcDriver = "jdbc:mysql://localhost:3306/jsp_db?"+
							"useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";


		String dbUser="jsp_db";
		String dbPass="1234";
		
		//2.데이터베이스 커넥션 생성
		conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt=conn.prepareStatement("insert into jsp_db.member values (?,?,?,?)");
		pstmt.setString(1,memberID);
		pstmt.setString(2,password);
		pstmt.setString(3,name);
		pstmt.setString(4,email);
		
		pstmt.executeUpdate();
		
	}finally{
		if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		if(conn!=null) try{conn.close();}catch(SQLException ex){}
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입</title>
</head>
<body>
MEMBER 테이블에 새로운 코드를 삽입했습니다.
</body>
</html>