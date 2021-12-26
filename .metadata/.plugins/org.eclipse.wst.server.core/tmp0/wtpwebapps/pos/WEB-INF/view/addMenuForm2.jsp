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
	<form action="add.do" method="post">
		<p>
			Name : <br />
			<input type="text" name="name" value="${param.name}">
			<c:if test="${errors.id}">Name를 입력하세요</c:if>
		</p>
		<p>
			Price : <br />
			<input type="text" name="price" value="${param.price}">
			<c:if test="${errors.price}">Price를 입력하세요</c:if>
		</p>
		<p>
			DrinkType : <br /> <select name="drinktype">
				<option value="coffee" selected>coffee</option>
				<option value="ade" >ade</option>
				<option value="tea" >tea</option>
				<option value="blended" >blended</option>
				<option value="etc" >etc</option>
			</select>
			<c:if test="${errors.drinktype}">DrinkType을 입력하세요</c:if>
		</p>
		<input type="submit" value="등록" onclick="clickEvent()">
	</form>
	<script>
		function clickEvent() {

			opener.parent.location.reload();
			window.close();

		}
	</script>
</body>
</html>