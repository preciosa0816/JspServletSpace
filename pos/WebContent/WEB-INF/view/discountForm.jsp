<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.form{
	border: 1px solid black;
	
}
</style>
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="discount.do">
	<div class="form">
	<h3>할인율을 입력하세요</h3>
	<input type="number" name="discount" id="discount"/>%<br>
	<input type="submit" value="등록" onclick="clickEvent()"/>
	</div>
	</form>
	
	<script>
		function clickEvent() {

			window.close();

		}
	</script>
</body>
</html>