<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
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
	<table border="1">
		<%	
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String id=request.getParameter("id");
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				Context init = new InitialContext();
				DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
				conn = ds.getConnection();

				pstmt = conn.prepareStatement("select * from MEMBER where id='"+id+"'");
				rs = pstmt.executeQuery();

				while (rs.next()) {
		%>
		<tr>
			<td>아이디 : </td>
			<td><%=rs.getString("id") %></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><%=rs.getString("password") %></td>
		</tr>
		<tr>
			<td>이름 : </td>
			<td><%=rs.getString("name") %></td>
		</tr>
		<tr>
			<td>나이 : </td>
			<td><%=rs.getInt("age")%></td>
		</tr>
		<tr>
			<td>성별 : </td>
			<td><%=rs.getString("gender") %></td>
		</tr>
		<tr>
			<td>이메일 주소 : </td>
			<td><%=rs.getString("email") %></td>
		</tr>
		<tr>
			<td>이메일 주소 : </td>
			<td><%=rs.getString("email") %></td>
		</tr>
		<tr>
			<td colspan="2"><a href="member_list.jsp">리스트로 돌아가기</a></td>
		</tr>
		<%
			}
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException ex) {
					}
				//커넥션풀에서 구한 Connection의 close()메서드를 호출시 DB와의 연결을 끊지않고 해당커넥션을 풀에 반환함
			}
		%>
	</table>
</body>
</html>