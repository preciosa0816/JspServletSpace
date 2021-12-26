<%@page import="java.util.ArrayList"%>
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
<h4>JSTL Core 라이브러리 실습(배열저장:1~10)</h4>
<c:set var="intArray" value="<%=new int[]{1,2,3,4,5,6,7,8,9,10} %>"/>
<c:forEach var="i" items="${intArray }" begin="0" end="9" varStatus="status">
	${i}
</c:forEach>
<br>
<c:forEach var="i" items="${intArray }" begin="0" end="6" varStatus="status">
	${i}
</c:forEach>

<h4>JSTL Core 라이브러리 실습2(ArrayList:홍길동,이순신,유관순)</h4>
<%
ArrayList<String> strArray  = new ArrayList<String>();
strArray.add("홍길동");
strArray.add("이순신");
strArray.add("유관순");
%>

<c:forEach var="i" items="<%=strArray %>" begin="0" end="2">
		<c:out value="${i}"/>
</c:forEach>


<h4>JSTL Core 라이브러리 실습3(String:A,B,C,D)</h4>
<c:set var="test" value="A,B,C,D"></c:set>
<c:forTokens var="i" items="${test}" delims="," varStatus="vs">
	<c:out value="${i}"/><br>
</c:forTokens><hr>

</body>
</html>