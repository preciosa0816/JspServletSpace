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
String eaddr= request.getParameter("eaddr");
String haddr= request.getParameter("haddr");
String tel= request.getParameter("tel");
session.setAttribute("eaddr", eaddr);
session.setAttribute("haddr", haddr);
session.setAttribute("tel", tel);
%>
<h3>영역과 속성 테스트</h3><br>
<b>홍길동님의 정보가 모두 저장되었습니다. <a href="attributeTest3.jsp">확인하러가기</a></b>
</body>
</html>