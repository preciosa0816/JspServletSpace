<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="refresh">
<style>
header {
	width: 100%;
	height: 30px;
	text-align: right;
	background-color: #424242;
	color: white;
}

#wrapper {
	font-size: 25px;
	text-align: center;
	width: 150px;
	height: 150px;
	margin: 5px;
	float: left;
	padding: 0;
}

#block_top {
	border: 1px solid green;
	color: black;
	font-size: 25px;
	text-align: center;
	width: 100%;
	height: 70%;
	float: left;
	line-height: 50px;
}

#block_bom {
	border: 1px solid green;
	color: white;
	font-size: 20px;
	text-align: center;
	background-color: green;
	width: 100%;
	height: 30%;
	float: left;
	line-height: -15px;
}

iframe {
	align: center;
	width: 100%;
	height: 50%;
}

#menu {
	top:120px;
	position:absolute;
	display: inline;
	float: left;
	padding: 10px;
	left: 200px;
	width: 800px;
}

#category {
	padding: 0px;
	color: white;
	font-size: 25px;
	text-align: center;
	background-color: brown;
	width: 125px;
	height: 70px;
	margin: 5px;
	float: left;
	line-height: 70px;
}

input {
	border: none;
	font-size: 15px;
	text-align: right;
}

#admin {
	text-align: center;
	border: 2px solid black;
	width: 80px;
	height: 50px;
	float: left;
	margin: 5px;
	line-height: 50px;
}

#mode {
	top:25%;
	right: 200px;
	position:absolute;
}

#color {
	border: 2px solid green;
	width: 200px;
	height: 100px;
	margin-top: 40px;
	font-size: 25px;
	line-height: 100px;
	text-align:center;
}
</style>
<title>Insert title here</title>
</head>
<body onload="printTime()">
	<header id="clock"> loading... </header>

	<section id="menu">
		<div id="category">
			<a href="setread.do?drinktype=coffee"
				style="text-decoration: none; color: white;"> <b>Coffee</b></a>
		</div>
		<div id="category">

			<a href="setread.do?drinktype=ade"
				style="text-decoration: none; color: white;"> <b>Ade</b></a>
		</div>
		<div id="category">

			<a href="setread.do?drinktype=blended"
				style="text-decoration: none; color: white;"> <b>Blended</b></a>
		</div>
		<div id="category">

			<a href="setread.do?drinktype=tea"
				style="text-decoration: none; color: white;"> <b>Tea</b></a>
		</div>
		<div id="category">

			<a href="setread.do?drinktype=etc"
				style="text-decoration: none; color: white;"> <b>Other</b></a>
		</div>
		<div align="left">

			<c:if test="${!empty menuData}">
				<c:forEach var="list" items="${menuData.menu}">
					<div id="wrapper">
						<div id="block_top">${list.name }</div>
						<div id="block_bom">${list.price }</div>
					</div>
				</c:forEach>
			</c:if>

			<c:if test="${empty menuData}">
				<c:forEach var="menu" items="${menuPage.content}">
					<div id="wrapper">
						<div id="block_top">${menu.name }</div>
						<div id="block_bom">${menu.price }</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</section>
	<aside id="mode" style="float: right">
		<div id="color"><a href=list.do>????????????</a></div>
		<div id="color"><a href = "add.do" onclick="window.open(this.href,'_blank','width=600,height=400');return false">????????????</a></div>
<!-- 		<div id="color"><a href = "add.do" >????????????</a></div> -->
		<div id="color"><a href="modifymenu.do">????????????</a></div>
		<div id="color"><a href="deletemenu.do">????????????</a></div>
	</aside>


	<script type="text/javascript">
		function iRefresh() {
			choice.location.href = "choice.jsp"; //iframe??? ????????? ????????? ??????. -->

		}

		function printTime() {

			var clock = document.getElementById("clock");

			var now = new Date();

			var ampm;

			if (now.getHours() >= 12) {

				ampm = "PM";

			} else {

				ampm = "AM";

			}

			var nowTime = now.getFullYear() + "." + (now.getMonth() + 1) + "."
					+ now.getDate() + ". &nbsp;" + ampm + "&nbsp;"
					+ now.getHours() + ":" + now.getMinutes() + ":"
					+ now.getSeconds();

			clock.innerHTML = nowTime;

			setTimeout("printTime()", 1000);

		}

		window.onload = function() {

			printTime();

		}
		
	</script>
</body>
</html>