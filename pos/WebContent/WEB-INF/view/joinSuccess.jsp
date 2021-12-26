<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
div{
	border:1px solid black;
	width: 500px;
	height: 200px;
	padding-top:150px;
	margin:auto;
	position: absolute;
	top:32%;
	left:33%;
	text-align: center;
	vertical-align: middle;
	display: table-cell;
}

</style>
<title>Join Complete</title>
</head>
<body>
<div>
${param.name}님, 회원 가입에 성공했습니다.<br/>
<c:set var="ctxPath" value="${pageContext.request.contextPath}"/>
<a href="${ctxPath}/login.do">[Login하러가기]</a>
</div>
</body>
</html>