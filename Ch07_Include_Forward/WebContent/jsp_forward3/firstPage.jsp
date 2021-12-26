<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("name", "page");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");
	System.out.println("firstpage.jsp");
	System.out.println("하나의 페이지 속성: "+pageContext.getAttribute("name"));
	System.out.println("하나의 요청 속성: "+request.getAttribute("name"));
	System.out.println("하나의 세션 속성: "+session.getAttribute("name"));
	System.out.println("하나의 어플리케이션 속성: "+application.getAttribute("name"));
	
	
	//forward사용 2번째 방법
	request.getRequestDispatcher("secondPage.jsp").forward(request, response);

%>
<hr>화면에 보여지지 않음<br>
하나의 페이지 속성: <%=pageContext.getAttribute("name")%><br>
하나의 요청 속성: <%=request.getAttribute("name")%><br>
하나의 세션 속성: <%=session.getAttribute("name") %><br>
하나의 어플리케이션 속성: <%=application.getAttribute("name") %> <br>

</body>
</html>