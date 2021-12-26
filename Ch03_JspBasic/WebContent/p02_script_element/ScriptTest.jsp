<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script</title>
</head>
<body>
<% String str2="지역변수 입니다. 함수식에는 사용 불가"; %>
<%! String str="전역변수 입니다.(!) 함수식에 사용 가능"; %>

<!-- 함수선언::반드시(!) -->
<%! String getStr(){
	return str;	 //지역변수는 함수안에서 사용 불가
	
}
%>
<%=str %><br>
<%=str2 %><br>
<%=getStr() %><br> 
</body>
</html>