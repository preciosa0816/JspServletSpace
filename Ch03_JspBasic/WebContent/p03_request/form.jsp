<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>방법1 : get으로 전송</b>
<form action="viewParameter.jsp" method="post">
이름: <input type="text" name="name" size="10"><br>
주소: <input type="text" name="address" size="10"><br>
좋아하는 동물: 
	<input type="checkbox" name="pet" value="dog">강아지
	<input type="checkbox" name="pet" value="cat">고양이
	<input type="checkbox" name="pet" value="pig">돼지
<br>
<input type="submit" value="submit">
</form>
<b>방법2 : a tag로 전송</b>
<a href="viewParameter.jsp?name=alink">목록(name:alink)</a>
</body>
</html>