<%@page import="java.util.*"%>
<%@page import="mvc.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jstl:core(변수지원,흐름제어,URL처리,기타태그)</title>
</head>
<body>
<%
	Member m = new Member();
	
%>  
<c:set target="<%=m %>" property="name" value="홍길동" ></c:set>  
<%=m.getName() %><br>

<c:set var="m2" value="<%=m %>"></c:set>
<c:set target="${m2}" property="name" value="홍길동2"></c:set>
${m2.name }<br>

<%
	Map<String,String> map= new HashMap<>();

%>
<c:set target="<%=map %>" property="홍길동3" value="1234" ></c:set>
<%=map.get("홍길동3") %>

</body>
</html>