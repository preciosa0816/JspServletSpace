<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="cloth" class="shop.ProductInfo" scope="request"></jsp:useBean> --%>
<%-- <% --%>
<!-- // cloth.setCode("70002"); -->
<!-- // cloth.setName("반팔티셔츠"); -->
<!-- // cloth.setPrice(15000); -->
<%-- %> --%>
<jsp:useBean id="pinfo" class="shop.ClothInfo" scope="request"/>
<jsp:setProperty name="pinfo" property="code" value="70002" />
<jsp:setProperty name="pinfo" property="name" value="반팔티셔츠" />
<jsp:setProperty name="pinfo" property="price" value="15000" />
<jsp:setProperty name="pinfo" property="size" value="S" /> 
<jsp:setProperty name="pinfo" property="color" value="red" /> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
의류 정보가 저장되었습니다
<hr>
<h3>제품 개략 정보</h3>
<!-- 문장 끝마침(/) 주의하기!! -->
<jsp:include page="ProductInfo.jsp"/> 
<%-- 코드:	<%=cloth.getCode() %><br> --%>
<%-- 제품명:${cloth.name }<br> --%>
<%-- 가격:<jsp:getProperty property="price" name="cloth"/>	<br> --%>
</body>
</html>