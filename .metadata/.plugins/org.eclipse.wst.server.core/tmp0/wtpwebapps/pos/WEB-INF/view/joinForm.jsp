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
	width:450px;
	height:300px;
	padding:10px;
	margin:auto;
	position: absolute;
	top:32%;
	left:33%;
}
</style>
<title>가입</title>
</head>
<body>
<div>
<form action="join.do" method="post">
<p>
	아이디 : <br/><input type="text" name="id" value="${param.id}">
	<c:if test="${errors.id}">ID를 입력하세요</c:if>
	<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>
</p>
<p>
	이름 : <br/><input type="text" name="name" value="${param.name}">
	<c:if test="${errors.name}">이름을 입력하세요.</c:if>
</p>
<p>
	암호 : <br/><input type="password" name="password">
	<c:if test="${errors.password}">암호를 입력하세요.</c:if>
</p>
<p>
	확인 : <br/><input type="password" name="confirmPassword">
	<c:if test="${errors.confirmPassword}">확인를 입력하세요.</c:if>
	<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
</p>
<input type="submit" value="가입">
</form>
</div>
</body>
</html>