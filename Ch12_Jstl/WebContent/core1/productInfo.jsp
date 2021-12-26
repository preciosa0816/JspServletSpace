<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jstl</title>
</head>
<body>
CODE:1111 
<c:set var="code" value="1111"  scope="request"></c:set>
NAME:강아지
<c:set var="name" value="강아지" scope="request"></c:set>
PRICE:1000
<c:set var="price" value="1000" scope="request"></c:set>
<jsp:forward page="productInfoView.jsp">
	<jsp:param value="hong" name="name"/>
</jsp:forward>
<%-- <%
 response.sendRedirect("productInfoView.jsp"); //값을 넘길 수 없음
 //?code=1111이런 식으로 주소창에 값을 넘겨야함 
%> --%>
</body>
</html>