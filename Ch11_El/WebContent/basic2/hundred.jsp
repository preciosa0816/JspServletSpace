<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1~100까지 더하기</title>
</head>
<body>
<%
	int sum=0;
	for(int i=1;i<=100;i++){
		sum+=i;
	}
	//out.println(sum);
	request.setAttribute("result", sum);
	RequestDispatcher d = request.getRequestDispatcher("hundredResult.jsp");
	d.forward(request, response);
	
%>

</body>
</html>