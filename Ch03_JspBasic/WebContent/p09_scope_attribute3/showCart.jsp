<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <% --%>
// 	int count;
// 	if (session.getAttribute("count") != null) {
// 		count = ((Integer) session.getAttribute("count")).intValue();
// 	}
// 	else {
// 		count = 0;
// 	}
// 	count++;
// 	session.setAttribute("count", new Integer(count));
<%-- %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
</head>
<body>
<h3>장바구니 내용</h3>
<ol>
<%
ArrayList<String> cart=(ArrayList<String>)session.getAttribute("cart");
for(int i=0; i<cart.size();i++){
	String item=cart.get(i);
	//out.println(item);
	%>
	<li><%=item %></li>
	<%
}
%>
</ol>
<%-- <% --%>

// Enumeration<String> e=session.getAttributeNames();
// while(e.hasMoreElements()){
// 	String item=e.nextElement();	
// 	if(item.equals("count")){
	
// 	}else{
// 		String thing=(String)session.getAttribute(item);
<%-- 		%> --%>
<%-- 		담은 물건 : <%=thing %><br> --%>
<%-- 		<% --%>
// 	}
// }

<%-- %> --%>
</body>
</html>