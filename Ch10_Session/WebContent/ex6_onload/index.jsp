<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#left{
		width:450px;
		height:400px;
	}
	
	#right{
		width:350px;
		height:400px;
	}
</style>
</head>
<body>
	<table width="100%" border="1">
		<tr>
			<td><iframe id="left" src="left.jsp" onLoad="changeRight()"></iframe></td>
			<td><iframe id="right" src="right.jsp"></iframe></td>
		</tr>
	</table>
	<script>
		changeRight = function(){
			var rightFrame = document.getElementById("right");
			console.log("call!");
			rightFrame.src = "right.jsp";
		}
	</script>
</body>
</html>