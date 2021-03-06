<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 라이브러리 실습</title>
</head>
<body>
<h1>JSTL fmt 라이브러리 실습</h1>
<c:set var="now" value="<%=new Date() %>"/>
<c:out value="${now }"/><br>
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now }" pattern="E MMM d hh:mm:ss z Y" /><br>
<fmt:setLocale value="ko_kr"/>
<fmt:formatDate value="${now }" type="date" dateStyle="short"/><br>
<fmt:formatDate value="${now }" type="time" timeStyle="medium" /><br>
<fmt:formatDate value="${now }" type="both" dateStyle="short"  timeStyle="medium" /><br>
<fmt:formatDate value="${now }" type="both" dateStyle="short"  timeStyle="long" /><br>
<fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="short" /><br>

<h1>JSTL fmt 라이브러리 실습 2</h1>
<fmt:setLocale value="ko_kr"/>
<fmt:formatNumber value="100000" type="currency"/><br>
<fmt:formatNumber value="0.12" type="percent" /><br>
<fmt:formatNumber value="987654321.1234" pattern="###,###,###.00" /><br>


</body>
</html>