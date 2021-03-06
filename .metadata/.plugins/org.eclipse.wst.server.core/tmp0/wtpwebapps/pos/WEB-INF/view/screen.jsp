<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8" http-equiv="refresh">
<style>
iframe {
	height: 100%;
	width: 100%;
}

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

.block_top {
	border: 1px solid green;
	color: black;
	font-size: 25px;
	text-align: center;
	width: 100%;
	height: 70%;
	float: left;
}

.block_bom {
	border: 1px solid green;
	color: white;
	font-size: 20px;
	text-align: center;
	background-color: green;
	width: 100%;
	height: 30%;
	float: left;
}

#choice {
	border: 1px solid gray;
	align: center;
	width: 100%;
	height: 50%;
}

#cancle {
	top: 435px;
	left: 423px;
	position: absolute;
	text-align: center;
}

.cancle {
	background: green;
	color: white;
	text-align: center;
	height: 25px;
	width: 100px;
	float: left;
	margin-right: 5px;
}

table#choice_table {
	background-color: none;
	color: black;
}

table#choice_table td, tr, th {
	background-color: #f2f2f2;
	color: black;
	margin: 2.1px;
	height: 22px;
	width: 145px;
	text-align: center;
}

table#choice_table th {
	background-color: #424242;
	color: white;
	margin: 2.1px;
	height: 24px;
	width: 145px;
	text-align: center;
}

#left {
	width: 40%;
	height: 800px;
	margin: 10px;
	padding: 15px;
	display: inline;
	float: left;
}

#innerleft {
	width: 40%;
	height: 400px;
	margin-left: 10px;
	margin-top: 15px;
	margin-bottom: 10px;
	margin-right: 0px;
	display: inline;
	float: left;
	padding: 0;
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

.final {
	color: white;
	font-size: 25px;
	text-align: center;
	background-color: red;
	width: 100px;
	height: 80px;
	margin-top: 10px;
	float: left;
	line-height: 80px;
}

#color {
	background-color: #424242;
	color: white;
	padding: 5px;
	margin-bottom: 5px;
	width: 200px;
}

table#cal {
	width: 200px;
	height: 300px;
	padding: 10px;
}

table#cal td, tr {
	margin: 30px;
	background-color: #424242;
	color: white;
	height: 15px;
	width: 30px;
	text-align: center;
}

table#cal td:hover {
	background-color: lightgrey;
}

table#cal td:active {
	background-color: grey;
}

#blue {
	text-align: right;
	background-color: lightblue;
	height: 15px;
}

input {
	border: none;
	font-size: 15px;
	text-align: right;
}

#innerAside {
	margin-top: 2%;
	width: 35%;
	margin-left: 0px;
	float: left;
	padding: 0;
}

#lastaside {
	width: 20%;
	margin-left: 0px;
	padding-top: 10px;
	margin-top: 10px;
	float: left;
	padding: 0;
}

#top {
	width: 100%;
	height: 80%;
	display: inline-block;
	vertical-align: middle;
}

#bottom {
	height: 10%;
	display: inline-block;
	vertical-align: middle;
	bottom: 0;
	position: absolute;
	right: 20px;
}

#bottom_left {
	height: 10%;
	display: inline-block;
	vertical-align: middle;
	top: 650px;
	position: absolute;
	right: 615px;
}

#admin {
	text-align: center;
	border: 2px solid black;
	width: 80px;
	height: 50px;
	float: left;
	margin: 5px;
	line-height: 50px;
	font-size: 15px;
}

#admin_left {
	text-align: center;
	width: 84px;
	height: 54px;
	float: left;
	margin: 15px;
	line-height: 50px;
	font-size: 20px;
}
</style>
<title>Insert title here</title>
</head>
<body onload="printTime()">
	<header id="clock"> loading... </header>
	<section id="left">
		<div id="choice">
			<!-- 		<iframe src="choice.jsp"></iframe> -->
			<table id="choice_table">
				<tr style="background-color: green; color: white;">
					<th>?????????</th>
					<th>??????</th>
					<th>??????</th>
					<th>??????</th>
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
			<div id="cancle">
				<div class="cancle">
					<a href="list.do?clear=true">??????????????????</a>
				</div>
				<div class="cancle">
					<a href="list.do?cancle=true">??????????????????</a>
				</div>
			</div>
		</div>

		<div id="pay">
			<form action="calculate.do" method="post">
				<section id="innerleft">
					
					<c:set var="total" value="0" />
					<c:forEach var="result" items="${orderedMenuData.menu}">
						<c:set var="total" value="${total + result.price}" />
					</c:forEach>
					<div id="color" style="margin-top: 0;">
						??? ????????? <br> <input type="number" name="totalsale" id="totalsale"
							value="<c:out value='${total}'/>" readonly>
					</div>
					
					<div id="color">
						<c:set var="discount" value="0" />
					<c:forEach var="disc" items="${disPer}">
						<c:set var="discount" value="${discount + disc.discount}" />
					</c:forEach>
						?????? ??????<br> <input type="number" value="<c:out value='${discount}'/>" name="discount"
							id="discount" readonly>
							
					</div>
					<div id="color">
						?????? ?????? <br> <input type="number" name="check" id="check" readonly
							value="<c:out value='${total}'/>">
					</div>
					<div id="color">
						?????? ?????? <br> <input type="number" id="display" name="revenue" onchange="call()">
					</div>
					<div id="color">
						???????????? <br> <input type="number" id="change" name="change" readonly>
					</div>
					<input type="hidden" name="user" value="<c:out value='${authUser.name}'/>"/>


				</section>
				<aside id="innerAside" style="float: left">
					<table id="cal">
						<tr>
							<td onclick="add(1)">1</td>
							<td onclick="add(2)">2</td>
							<td onclick="add(3)">3</td>
						</tr>
						<tr>
							<td onclick="add(4)">4</td>
							<td onclick="add(5)">5</td>
							<td onclick="add(6)">6</td>
						<tr>

							<td onclick="add(7)">7</td>
							<td onclick="add(8)">8</td>
							<td onclick="add(9)">9</td>

						</tr>
						<tr>
							<td onclick="add(0)">0</td>
							<td onclick="reset()">C</td>
							<td onclick="call()">???</td>
						</tr>
					</table>

				</aside>
				<aside id="lastaside">
					<div class="final"><a href="discount.do" onclick="window.open(this.href,'_blank','width=600,height=400');return false">??????</a></div>
					<div class="final"><input style="background: red; color: white; font-size:25px;" type="submit" name="card" value="??????"></div>
					<div class="final"><input style="background: red; color: white; font-size:25px;" type="submit" name="cash" value="??????"></div>
				</aside>
			</form>
		</div>
	</section>
	<aside id="menu" style="float: right">
		<div id="category">
			<a href="list.do?drinktype=coffee"
				style="text-decoration: none; color: white;"> <b>Coffee</b></a>
		</div>
		<div id="category">

			<a href="list.do?drinktype=ade"
				style="text-decoration: none; color: white;"> <b>Ade</b></a>
		</div>
		<div id="category">

			<a href="list.do?drinktype=blended"
				style="text-decoration: none; color: white;"> <b>Blended</b></a>
		</div>
		<div id="category">

			<a href="list.do?drinktype=tea"
				style="text-decoration: none; color: white;"> <b>Tea</b></a>
		</div>
		<div id="category">

			<a href="list.do?drinktype=etc"
				style="text-decoration: none; color: white;"> <b>Other</b></a>
		</div>
		<div align="left">
			<div id="top">
				<c:if test="${menuData!=null}">
					<c:forEach var="list" items="${menuData.menu}">
						<div id="wrapper">
							<div class="block_top" id="pick">
								<a href="list.do?name=${list.name }&price=${list.price }"> ${list.name }</a>
							</div>
							<div class="block_bom">${list.price }</div>
						</div>
					</c:forEach>
				</c:if>

				<c:if test="${menuData.getMenu().size()==0}">
					<c:forEach var="menu" items="${menuPage.content}">
						<div id="wrapper">
							<div class="block_top" id="pick">
								<a href="list.do?name=${menu.name }&price=${menu.price }"> ${menu.name }</a>
							</div>
							<div class="block_bom">${menu.price }</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div id="bottom_left">
				<div id="admin_left" style="background: red; color: white">Hot
				</div>
				<div id="admin_left" style="background: blue; color: white">Cold</div>
			</div>
			<div id="bottom">
				<div id="admin">
					<a href="setlist.do">?????? ??????</a>
				</div>
				<div id="admin">?????? ??????</div>
				<div id="admin">?????? ??????</div>
			</div>
		</div>
	</aside>

	<script type="text/javascript">
	$("#display").on("propertychange change keyup paste input", function() {
		//document.getElementById('change').value =parseInt(document.getElementById('check').value) - parseInt(document.getElementById('display').value);
		$("#change").val=Integer.paseInt($("#check").val)-Integer.paseInt($("#display").val);
	 
	});
	</script>

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
		
		//isNaN : ???????????? ????????? ??????????????? ??????, ???????????? false ????????? true ??????
		//eval??? ????????? ?????? ????????? ?????????????????? ???????????? ?????????
		//eval ????????? ?????? ?????? ???????????? ???????????? ????????? ??????- ????????????
		var numberClicked=false; //???????????? ???????????? ?????? ????????????

		function add(char){
			if(numberClicked==false){//????????? ?????? ?????? ?????? ???????????? ??????
				if(isNaN(char)==true) {//???????????? ?????? x			
				}else{
					var display=document.getElementById('display'); //???????????? ?????? input?????? ????????????
					//display.value??? input?????? ?????? ???????????? ???
					display.value+=char;
				}
			}else{//?????? ???????????? ???????????????
				var display=document.getElementById('display'); //???????????? ?????? input?????? ????????????
				//display.value??? input?????? ?????? ???????????? ???
				display.value+=char;
			}
			
			if(isNaN(char)==true){ //char??? ???????????????
				numberClicked=false;
			}else{ //char??? ????????????
				numberClicked=true;
			}
			
		}

		function calculate(){
			var display=document.getElementById('display');
			display=eval(display.value);
			document.getElementById('display').value=display;
		}
		
		function discount(){
			//var check=document.getElementById('check');
			var discount=document.getElementById('discount');
			var totalsale=document.getElementById('totalsale');
			var check=totalsale.value-discount.value;
			document.getElementById('check').value=check;
		}
// 		document.getElementById("totalsale").onload = function() { 
// 			if(document.getElementById("totalsale").value && document.getElementById("discount").value){
// 				  document.getElementById('check').value =parseInt(document.getElementById('totalsale').value) - parseInt(document.getElementById('discount').value);
// 				 }
// 			}

		function call()
		{
		 document.getElementById('change').value =parseInt(document.getElementById('display').value) - parseInt(document.getElementById('check').value);
		
		 
		}
		
		function reset(){
			document.getElementById('display').value="";
		}
	</script>
</body>
</html>