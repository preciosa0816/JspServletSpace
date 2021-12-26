<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합의 결과 출력(EL표기법)</title>
</head>
<body>
<%=request.getAttribute("result")%><br>
\${param.result }: 파라미터로 넘어온 값이 아니므로 불가 <br>
\${result}::${result}<br>
</body>
</html>