<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int count;
	if (session.getAttribute("count") != null) {
		count = ((Integer) session.getAttribute("count")).intValue();
	} else {
		count = 0;
	}
	count++;
	session.setAttribute("count", new Integer(count));
%>
<%
	if(session.getAttribute("cart")==null){
		session.setAttribute("cart", new ArrayList<String>());
	}
	ArrayList<String> cart=(ArrayList<String>)session.getAttribute("cart");
	cart.add("car, hyundae sonata, 82000000");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 구입 페이지</title>
</head>
<body>
	<h3>자동차를 장바구니에 담았습니다.</h3>
	<a href="showCart.jsp">장바구니 내용보기</a>
	<%
		session.setAttribute("car", "car");
		
	%>
</body>
</html>