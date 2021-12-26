<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String agree= request.getParameter("agree");
	String result=null;
	
	if(agree.equals("yes")){
		result="SUCCESS";
		String id=(String)session.getAttribute("id");
		String pw=(String)session.getAttribute("pw");
		String name=(String)session.getAttribute("name");
		//
		
		PrintWriter writer = null;
		
		try{
		request.getSession().getServletContext().getRealPath("/");
		System.out.println(request.getSession().getServletContext().getRealPath("/"));
		//C:\JspServletSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Ch10_Session\ 에 저장됨
		
		String filePath = application.getRealPath("/"+id+".txt");
		System.out.println(filePath);
		writer = new PrintWriter(filePath);		
		writer.println("id:"+id);
		writer.println("pw:"+pw);
		writer.println("name:"+name);
		
		}catch(IOException ioe){
			result = "FAIL";
		}finally{
			try{
				writer.close();
				
			}catch(Exception e){
				
			}
		}
	}else{
		result="FAIL";
	}
	session.invalidate();//세션 종료 
	response.sendRedirect("result.jsp?RESULT="+result);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>