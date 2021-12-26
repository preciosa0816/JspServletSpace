<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url var="url1" value="http://www.google.com"></c:url>
<c:url var="url2" value="../use_if_choose/core_choose.jsp">
	<c:param name="id" value="guest"/>
</c:url>
	<ul>
		<li>url1 = ${url1 }</li>
		<li>url2 = ${url2 }</li> <!--/Ch12_Jstl/use_if_choose/core_choose.jsp?id=admin -->
	</ul>
<a href=<c:out value="${url2}"/>>url2(core_choose.jsp)에 값 넘겨주기</a>
</body>
</html>