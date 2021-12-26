<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL연산자</title>
</head>
<body>
<h4>연산자1</h4>
${"(1) literal" }<br>
\${"Hello." }=>${"Hello." }<br>
\${123 }=>${123 }<br>
\${null }=>${null }<br>
<br>
${"(2) 산술식" }<br>
\${110/20}=>${110/20 }<br>
\${100%3}=>${100%3 }<br>
<br>
${"(3) 비교연산자" }<br>
\${100<=20}=>${100<=20 }<br>
\${100==20}=>${100==20 }<br>
\${100>=20}=>${100>=20 }<br>
<br>
${"(3) 논리연산자" }<br>
\${true&&false}=>${true&&false}<br>
\${true||false}=>${true||false }<br>
<br>
${"(4) 조건연산자" }<br>
\${2+5==7?7:10}=>${2+5==7?7:10}



</body>
</html>