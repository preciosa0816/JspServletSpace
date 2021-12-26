<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

\${param.NUM1 } : ${param.NUM1 }<br>
\${param.NUM2 } : ${param.NUM2 }<br>
request.getParameter("NUM1") : <%=request.getParameter("NUM1") %><br>
\${param.NUM1*param.NUM2 } : ${param.NUM1*param.NUM2 }
<hr>
<c:set var="num1" value="7"></c:set>
${num1 }<br>

</body>
</html>