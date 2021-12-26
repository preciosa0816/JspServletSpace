<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    /*  브라우져의 옵션에 상관없이 jsp페이지에서  페이지를 열때마다 리플래쉬 기능을 만들어 주는 방법  */
    response.setHeader("Cache-Control","no-cache"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader("Expires",0); 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script>
		function logoutCheck(){		
			if( confirm("정말로 로그아웃하시겠습니까?") ){	
				location.href="LogOut.jsp";
			}
		}
		
		function checkForm(){
			var id_o=document.getElementById("id");
			var pw_o=document.getElementById("pw");
			if(id_o.value == "" && pw_o.value == ""){
					alert("아이디와 패스워드가 입력되지 않았습니다.");
					id_o.focus();				
			}else if(pw_o.value == ""){
					alert("패스워드가 입력되지 않았습니다.");
					pw_o.focus();			
			}else if(id_o.value == ""){			
					alert("아이디가 입력되지 않았습니다.");
					id_o.focus();
			}else{
				document.login.submit();
			}
		}
	</script>
</head>
<body>
	<h2>left.jsp</h2>
	<%
		//세션의 정보가 없을때 로그인 화면 있을때 로그인중 ! 표시
		if(session.getAttribute("id")==null){  //세션이 널이면
	%>
		<form action="LoginResult.jsp" method="post" name="login">
			ID : <input type="text" name="id" id="id"><br/>
			PWD : <input type="password" name="pw" id="pw"><br/><br/>
			<input type="button" value="로그인" onclick="checkForm();"><br/>
		</form>
	<%
		}else{ //인증하고 온 경우
			long sTime = session.getCreationTime();
			long eTime = session.getLastAccessedTime();
			Date sd = new Date(sTime);
			Date ed = new Date(eTime);
			//sd.toLocaleString();
			//ed.toLocaleString();
			//out.print(sTime+"<br/>");
			//out.print(eTime+"<br/>");
			//out.print("처음 접속시간 : "+sd.toLocaleString()+"<br/>");
			//out.print("마지막 접근시간 : "+ed.toLocaleString()+"<br/>");
	%>
			<b><%=session.getAttribute("id") %></b> 님 로그인 중 <br/>
		<form>
			<input type="button" value="로그아웃" onclick="logoutCheck()" />
		</form>
			<hr color="red">
			접속시간 : <%=new Date(session.getCreationTime()).toLocaleString()%> <br/>
		    마지막 접근시간 : <%=new Date(session.getLastAccessedTime()).toLocaleString()%> <br/>		
	<% 					
		}
	%>
</body>
</html>