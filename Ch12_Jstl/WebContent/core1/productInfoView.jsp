<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보</title>
</head>
<body>
<h4>상품정보</h4>
상품코드 ::${requestScope.code} <br>
상품명 :: ${name}<br>
단가 :: ${price}<br>

<h4>상품정보</h4>
<%-- <c:out>::JspWriter에 데이터 출력 --%>
상품코드 ::<c:out value="${code }" ></c:out> <br> 
상품명 :: <c:out value="${name }" ></c:out><br>
단가 :: <c:out value="${price }" ></c:out><br>

<hr>
request.getParameter("name") :: <%=request.getParameter("name") %><br> <!-- hong 출력 -->
request.getAttribute("name") :: <%=request.getAttribute("name") %><br> <!-- 강아지 출력 -->
\${param.name } :: ${param.name }<br><!-- hong 출력 -->
c:out value="\${param.name}" :: <c:out value="${param.name}"></c:out><br><!-- hong 출력 -->
c:out value="\${name}" :: <c:out value="${name}"></c:out><br><!-- 강아지 출력 -->
c:out value='< % =request.getParameter("name")  % >' :: <c:out value='<%=request.getParameter("name") %>'></c:out><!-- hong 출력 -->

</body>
</html>