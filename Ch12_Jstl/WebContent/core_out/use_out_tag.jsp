<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소스보기</title>
</head>
<body>
<%
	FileReader reader = null;
	try{
	String path=request.getParameter("path"); //?path=/core_out/use_if_tag.jsp 주소창에입력하기 
	reader = new FileReader(getServletContext().getRealPath(path));
%>
<pre>
source code= <%=path %>
<c:out value = "<%=reader %>" escapeXml="true"/>
</pre>
<%	
	}catch(IOException ex){
%>
ERROR : <%=ex.getMessage() %>
<%
	}finally{
		if(reader!=null)
			try{
				reader.close();
			}catch(IOException ex){}
			}
%>
</body>
</html>