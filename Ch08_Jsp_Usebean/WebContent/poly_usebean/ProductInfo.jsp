<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="pinfo" class="shop.ProductInfo" scope="request"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Code: <jsp:getProperty property="code" name="pinfo"/><br>
Product Name: <jsp:getProperty property="name" name="pinfo"/><br>
Price: <jsp:getProperty property="price" name="pinfo"/><br>
</body>
</html>