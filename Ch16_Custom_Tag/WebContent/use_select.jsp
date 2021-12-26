<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select 태그 사용</title>
</head>	
<body>
<tf:select name="code" rgb="RGB mode" wb="BW mode"/>

<tf:select name="genre" rock="r" ballad="b" metal="m"/>

</body>
</html>