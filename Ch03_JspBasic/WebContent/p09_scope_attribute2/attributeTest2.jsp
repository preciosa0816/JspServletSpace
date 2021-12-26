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
String eaddr= request.getParameter("eaddr");
String haddr= request.getParameter("haddr");
String tel= request.getParameter("tel");
session.setAttribute("eaddr", eaddr);
session.setAttribute("haddr", haddr);
session.setAttribute("tel", tel);
String name=(String)application.getAttribute("name");
//application에 올라온 내용은 그것을 받은 웹브라우저만이 아닌 다른 브라우저도 사용가능함.
%>
<h3>영역과 속성 테스트</h3><br>
<b><%=name %>님의 정보가 모두 저장되었습니다. <a href="attributeTest3.jsp">확인하러가기</a></b>
</body>
</html>