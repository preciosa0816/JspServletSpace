<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="mvc.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jstl($,#)</title>
</head>
<body>
<%
	Member m = new Member();
	HashMap<String,String> pref = new HashMap<>();
	
%>
<c:set var="m" value="<%=m %>"></c:set>
<c:set target="${m}" property="name" value="alphago"></c:set> 

<c:set var="pref" value="<%=pref %>"></c:set>
<c:set var="favoriteColor" value="#{pref.color }"></c:set>
회원이름 : ${m.name }<br>
좋아하는 색깔: ${favoriteColor }<br>
<c:set target="${pref }" property="color" value="red"></c:set>
설정이후 좋아하는 색:: ${favoriteColor }

</body>
</html>