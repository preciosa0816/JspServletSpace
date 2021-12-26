<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application(pure JSP)::getRealPath()</title>
</head>
<body>
<%
	String resourcePath = "/message/notice.txt";
%>
	자원의 실제경로:<br>
	<%=application.getRealPath(resourcePath) %><br>
	---------------------------------------------<br>
	<%=resourcePath %>의 내용<br>
	---------------------------------------------<br>
	<% 
	char[] buff=new char[512];
	int len=-1;
	BufferedReader br=null;
	try{
		InputStreamReader is=new InputStreamReader(application.getResourceAsStream(resourcePath),"UTF-8");
		br= new BufferedReader(is);
		while((len=br.read(buff))!=-1){
			out.println(new String(buff,0,len));
		}
	}catch(IOException e){
		out.println("Exceipton!: "+e.getMessage());
	}finally{
		if(br!=null){
			try{
				br.close();
			}catch(IOException e){
				
			}
		}
		
	}
	
	%>
</body>
</html>