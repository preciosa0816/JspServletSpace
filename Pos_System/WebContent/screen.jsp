<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="refresh">
<style>
header {
	width: 100%;
	height:30px;
	text-align:right;
	background-color: black;
	color: white;
}
#block{
	background-color: green;
	width:150px;
	height:150px;
	margin:5px;
	float:left;
}
iframe {
	align: center;
	width: 100%;
	height: 50%;
}

#left {
	width: 40%;
	height: 800px;
	margin: 10px;
	padding: 15px;
	display: inline;
	float: left;
}

#menu {
	margin-top: 2.5%;
	width: 55%;
	right: 5%;
}

#pay {
	width: 100%;
	height: 40%;
	margin-top: 5px;
	background-color: lightgray;
}
</style>
<title>Insert title here</title>
</head>
<body onload="printTime()">
	<header id="clock"> loading... </header>
	<section id="left">
		<iframe src="choice.jsp" name="choice" onload="iRefresh()"></iframe>

		<div id="pay"></div>
	</section>
	<aside id="menu" style="float: right">
		<div align="left">
			<div id="block"></div>
			<div id="block"></div>
			<div id="block"></div>
			<div id="block"></div>
			<div id="block"></div>
			<div id="block"></div>
			<div id="block"></div>
			<div id="block"></div>
			<div id="block"></div>
		</div>
	</aside>


	<script type="text/javascript">
		function iRefresh() {
			choice.location.href = "choice.jsp"; //iframe의 경로를 입력해 준다. -->
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

		    var nowTime = now.getFullYear() + "." + (now.getMonth()+1) + "." + now.getDate() + ". &nbsp;" + ampm + "&nbsp;" + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();

		    clock.innerHTML = nowTime;

		    setTimeout("printTime()",1000);

		}

		window.onload = function() {

		    printTime();

		}
	</script>
</body>
</html>