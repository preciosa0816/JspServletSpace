<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrapper{
	left:30%;
}
#choice {
	border: 1px solid gray;
	align: center;
	width: 100%;
	height: 50%;
}

table#choice_table {
	background-color: none;
	color: black;
}

table#choice_table td, tr,th {
	background-color: #f2f2f2;
	color: black;
	margin: 2.1px;
	height: 22px;
	width: 145px;
	text-align: center;
}

</style>
</head>
<body>
	choice.jsp<br>
	<div id="wrapper">
		<table id="choice_table">
				<tr style="background-color:green; color:white;">
					<th>메뉴명</th>
					<th>수량</th>
					<th>가격</th>
					<th>비고</th>
				</tr>
				<c:if test="${!empty orderedMenuData}">
					<c:forEach var="list" items="${orderedMenuData.menu}">
						<tr>
					<td>${list.name }</td>
					<td>1</td>
					<td>${list.price }</td>
					<td></td>
				</tr>
					</c:forEach>
				</c:if>
			</table>
	</div>
</body>
</html>