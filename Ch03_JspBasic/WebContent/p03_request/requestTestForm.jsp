<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>학번, 이름, 학년, 선택과목을 입력하는 폼</h1>
<form action="requestTestPro.jsp" method="get">
<p><label>학번: </label><input type="text" name="id" id="id"></p>
<p><label>이름: </label><input type="text" name="name" id="name"></p>
<p><label>학년: </label><input type="radio" name="grade" id="grade1" value="1학년" checked>1학년 
<input type="radio" name="grade" id="grade2" value="2학년">2학년 
<input type="radio" name="grade" id="grade3" value="3학년">3학년 
<input type="radio" name="grade" id="grade4" value="4학년">4학년 </p>
<p><label>선택과목: </label><select name="subject">
<option  value="JAVA" selected>JAVA</option>
<option  value="C">C</option>
<option  value="Python">Python</option>
<option  value="SQL">SQL</option>
</select></p>
<p><input type="submit" value="입력완료"></p>
</form>
</body>
</html>