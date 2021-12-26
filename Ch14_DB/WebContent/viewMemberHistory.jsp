<%@page import="java.io.IOException"%>
<%@page import="java.io.Reader"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%String memberID=request.getParameter("memberID"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<%
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
	
	String query="select * from jsp_db.MEMBER_history where memberid='"+memberID+"'";
	
	//2.데이터베이스 커넥션 생성
	conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	//3.Statement 생성
	stmt=conn.createStatement();
	
	//4.쿼리 실행
	rs=stmt.executeQuery(query);
	
	//5. 쿼리 실행결과 출력
	if(rs.next()){
%>
<table border="1">
<tr>
<td>아이디</td>
<td><%=memberID %></td>
</tr>
<td>히스토리</td>
<td>
<%
	String history=null;
	Reader reader=null;
	try{
	reader= rs.getCharacterStream("HISTORY");
	if(reader!=null){
		StringBuilder buff=new StringBuilder();
		char[]ch = new char[512];
		int len=-1;
		
		while((len=reader.read(ch))!=-1){
			buff.append(ch,0,len);
		}
		history=buff.toString();
	}
	}catch(IOException ex){
		out.println("Exception 발생:"+ex.getMessage());
	}finally{
		if(reader!=null) try{reader.close();}catch(IOException ex){}
	}
%>
<%=history %>
</td>
</tr>
</table>
<%
	}else{	
%>
<%=memberID %>회원의 히스토리가 없습니다.
<%
		}
	}catch(SQLException ex){
%>
에러 발생:<%=ex.getMessage()%>
<%		
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException ex){}	
		if(stmt!=null)try{stmt.close();}catch(SQLException ex){}	
		if(conn!=null)try{conn.close();}catch(SQLException ex){}		
	}%>

</body>
</html>