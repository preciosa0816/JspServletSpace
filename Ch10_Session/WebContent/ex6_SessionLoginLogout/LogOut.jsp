<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery-3.4.1.js"></script>
<script src="../js/jquery-migrate-1.4.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

function logout() {
	r=confirm("정말로 로그아웃 하시겠습니까?");
	if(!r){
		//session.setAttribute("id", id);
		<%-- 		<% session=request.getSession(); --%>
		<%-- 		session.setAttribute("id", "id");%> --%>
		history.back();
	}else{
		
		<%session=request.getSession(false); //
		if(session!=null)
		session.invalidate();//session 종료%>
		history.go(-2);
	}
}


logout()
</script>

</body>
</html>