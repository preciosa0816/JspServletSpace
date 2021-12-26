<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1. 학과 배열 출력-<br>
0번째: ${major[0][0]}, ${major[0][1]}<br>
1번째: ${major[1][0]}, ${major[1][1]}<br>
2번째: ${major[2][0]}, ${major[2][1]}<br>
3번째: ${major[3][0]}, ${major[3][1]}<br>
<br>
2. 과목 ArrayList 출력-<br>
First:${arrayList[0] }; <br>
Second:${arrayList[1] };<br>
Third:${arrayList[2] };<br>
<br>
3.교수 Map 출력-<br>
학과: ${map["학과"]}<br>
성명: ${map["성명"]}<br>
직위: ${map["직위"]}<br>
전화: ${map["전화"]}<br>
</body>
</html>