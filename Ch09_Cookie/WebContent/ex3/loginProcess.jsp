<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%
String id = request.getParameter("id"); 
Cookie[] cookie=request.getCookies();
boolean found=false;
	for(int i =0; i<cookie.length;i++){
		if(cookie[i].getName().equals("MyCookie")){
			found=true; break;
		}
	}
if(!found){
	Cookie MyCookie = new Cookie("MyCookie",id);	
	MyCookie.setMaxAge(60*60);//1hr
	response.addCookie(MyCookie);
	out.println("쿠키를 최초로 설정합니다.<br>");
}else{
	out.println("쿠키가 설정되어있습니다.<br>");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>Login Information</h4>
Login ID : <%=id %><br>
Login PW : ${param.pw }<br>
<br>
//모든 쿠키들을 출력//<br>
Cookie Header:: <%=request.getHeader("Cookie") %><br>


</body>
</html>