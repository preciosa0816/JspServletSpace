<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application::Java</title>
</head>
<body>
	<% 
	FileReader fr=null;
	char[] buff = new char[512];//2바이트가 문자1개이므로 1024바이트 작성가능
	int len=-1;//길이가 없다
	
	try{
		fr=new FileReader("C:\\JspServletSpace\\Ch03_JspBasic\\WebContent\\message\\notice.txt");
		while((len=fr.read(buff))!=-1){
			out.println(new String(buff,0,len));
		}
	}catch(IOException e){
		out.println("Exceipton!: "+e.getMessage());
	}finally{
		if(fr!=null){
			try{
				fr.close();
			}catch(IOException e){
				
			}
		}
		
	}
	
	%>
</body>
</html>