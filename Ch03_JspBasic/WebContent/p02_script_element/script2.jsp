<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
String declaration="선언문 연습입니다.";
%>
<%! public String declarationMethod(){
	return declaration;
}
	%>
	
	<%
	//Jsp 한줄주석(Java)
	/* Jsp 여러줄 주석(Java) */
		String scriptlet = "script 연습";
		String comment = "주석 및 연습";
		out.println("내장객체를 이용한 출력 : "+declaration+"</p>");
	%>
	
	<p>선언문 출력하기(전역변수): <%=declaration %></p>
	<p>메소드 출력하기(method):<%=declarationMethod() %> </p>
	<p>scriptlet 출력하기(지역변수): <%=scriptlet %> </p>
	<hr>
<!-- html 한줄주석 -->
<!-- <%=comment %> 결과가 나오지 않지만 처리되는것 처럼 보임-->
	<%=comment %>
<%-- Jsp주석	<%=comment %> --%>
	
</body>
</html>














