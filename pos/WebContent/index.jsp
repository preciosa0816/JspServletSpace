<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
div {
	padding-top:100px;
	border: 1px solid black;
	text-align: center;
	width: 500px;
	height: 220px;
	position: absolute;
	left: 43%;
	top: 50%;
	margin-left: -150px;
	margin-top: -150px;
	vertical-align: middle;
	display: table-cell;
}
</style>
<title>회원제 게시판 예제</title>
</head>
<body>
	<div>
		<c:if test="${! empty authUser}">
	${authUser.name}님 안녕하세요
		<% 
		RequestDispatcher r= request.getRequestDispatcher("list.do");
		r.forward(request, response);	
		%>
	
<!-- 			<a href="logout.do">[LOGOUT]</a> -->
<!-- 			<a href="changePwd.do">[Change PW]</a> -->
<%-- 			<c:set var="ctxPath" value="${pageContext.request.contextPath}" /> --%>
<%-- 			<a href="${ctxPath}/article/list.do">[View Board]</a> --%>
			
			
		</c:if>
		
		<c:if test="${empty authUser}">

			<form method="post">
				<c:if test="${errors.idOrPwNotMatch}">
				아이디와 암호가 일치하지 않습니다.
				</c:if>
				<p>
					ID : <input type="text" name="id" value="${param.id}">
					<c:if test="${errors.id}">ID를 입력하세요</c:if>
				</p>
				<p>
					PW : <input type="password" name="password">
					<c:if test="${errors.password}">PW를 입력하세요</c:if>
				</p>
				<input type="submit" value="JOIN" formaction="join.do"> 
				<input type="submit" value="LOGIN" formaction="login.do">
			</form>
		</c:if>
		<br />
	</div>
</body>
</html>