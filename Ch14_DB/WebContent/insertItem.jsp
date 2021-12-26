<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	//http://localhost:8080/Ch14_DB/insertItem.jsp?id=1 =>데이터가 성공적으로 들어감
	//http://localhost:8080/Ch14_DB/insertItem.jsp?id=2&error=f =>의도적 익셉션발생
	String idValue=request.getParameter("id");
	Connection conn=null;
	PreparedStatement pstmtItem=null; //자동으로 값변환, 간결한 코드를 위해 사용 
	PreparedStatement pstmtDetail=null; //자동으로 값변환, 간결한 코드를 위해 사용 
	
	String jdbcDriver = "jdbc:mysql://localhost:3306/jsp_db?"+
			"useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";

	String dbUser="jsp_db";
	String dbPass="1234";
	
	Throwable occuredException=null;
	
	try{
		int id=Integer.parseInt(idValue);
		
		//2.데이터베이스 커넥션 생성
		conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		conn.setAutoCommit(false);
		
		pstmtItem=conn.prepareStatement("insert into jsp_db.item values (?,?)");
		pstmtItem.setInt(1,id);
		pstmtItem.setString(2,"상품이름 "+id);
		pstmtItem.executeUpdate();
		
		if(request.getParameter("error")!=null){
			throw new Exception("의도적 익센셥 발생");
		}
		pstmtDetail=conn.prepareStatement("insert into jsp_db.item_detail values (?,?)");
		pstmtDetail.setInt(1,id);
		pstmtDetail.setString(2,"상품이름 "+id);
		pstmtDetail.executeUpdate();
		
		conn.commit();
	}catch(Throwable e){
		if(conn!=null){
			try{
				conn.rollback();
			}catch(SQLException ex){}
		}
	occuredException=e;
	}finally{
		if(pstmtItem!=null) try{pstmtItem.close();}catch(SQLException ex){}
		if(pstmtDetail!=null) try{pstmtDetail.close();}catch(SQLException ex){}
		if(conn!=null) try{conn.close();}catch(SQLException ex){}
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITEM 값 입력</title>
</head>
<body>
<% if(occuredException!=null){ %>
에러가 발생하였음 :<%=occuredException.getMessage() %>
<%}else{ %>
데이터가 성공적으로 들어감
<%} %>
</body>
</html>