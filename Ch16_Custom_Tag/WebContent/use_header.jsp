<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목 출력</title>
</head>
<body>
<tf:header title="text title" level="2"/>

<tf:header title="${'EL title'}" level="3"/>

<tf:header title='<%="expression title" %>'/>
</body>
</html>