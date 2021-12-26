<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%-- <jsp:useBean id="book" class="shop.ProductInfo" scope="request"/> --%>
<jsp:useBean id="pinfo" class="shop.BookInfo" scope="request"/>
<jsp:setProperty name="pinfo" property="code" value="50001" />
<jsp:setProperty name="pinfo" property="name" value="의뢰인" />
<jsp:setProperty name="pinfo" property="price" value="9000" />
<jsp:setProperty name="pinfo" property="writer" value="존 그리샴" /> 
<jsp:setProperty name="pinfo" property="page" value="704" /> 

<%-- <% --%>
<!-- // book.setCode("50001");  -->
<!-- // book.setName("의뢰인");  -->
<!-- // book.setPrice(9000);  -->
<%-- %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
책 정보가 저장되었습니다
<hr>
<h3>제품 개략 정보</h3>
<jsp:include page="ProductInfo.jsp"/>

<%-- code: <%=book.getCode() %><br> --%>
<%-- Product Name: <%=book.getName() %><br> --%>
<%-- Price: <%=book.getPrice() %><br> --%>
</body>
</html>