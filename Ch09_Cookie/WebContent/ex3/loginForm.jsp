<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function In_Check() {
	if(document.login.id.value==""){
		alert("아이디를 입력하세요");
		return;
	}else if(document.login.pw.value==""){
		alert("비밀번호를 입력하세요")
		return;
	}
	
	document.login.submit(); //loginProcess.jsp로 보내기 
}
</script>
</head>
<body>
<h4>로그인 화면 설계</h4>
<form name="login" method="post" action="loginProcess.jsp">
	<table border=1>
		<tr>
		<td>ID</td>
		<td><input type="text" name="id"></td>
		</tr>
		<tr>
		<td>PW</td>
		<td><input type="password" name="pw"></td>
		</tr>
		<tr>
		<td colspan="2"><input type="button" value="login" onclick="In_Check()"></td>
		<td colspan="2"><input type="reset" value="reset"></td>
		</tr>
	</table>
</form>
</body>
</html>