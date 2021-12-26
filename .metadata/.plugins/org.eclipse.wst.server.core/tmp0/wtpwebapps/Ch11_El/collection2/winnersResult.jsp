<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
(1)배열출력<br>
${name[0] }<br>
${name[1] }<br>
${name[2] }<br>
<hr>
(2)리스트 출력<br>
${fruit[0] }<br>
${fruit[1] }<br>
${fruit[2] }<br>
<hr>
(3)Map 출력<br>
${location.get("홍길동1") }<br>
${location.get("홍길동2") }<br>
${location.get("홍길동3") }<br>
<br>
${location["홍길동1"] }<br>
${location["홍길동2"] }<br>
${location["홍길동3"] }<br>
<hr>
(4)Java UseBean출력	<br>
${product} : ${price }<br>
${p.name }:${p.value }<br>
<hr>
(5)<br>
LoginBean a1:: ${login[0].userid} : ${login[0].password} <br>
LoginBean b1:: ${login[1].userid} : ${login[1].password}<br>

</body>
</html>