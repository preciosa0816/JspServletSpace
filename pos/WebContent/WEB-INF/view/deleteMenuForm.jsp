<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
<form action="delete.do" method="post">
<input type="hidden" value="${delReq.no}" name="no">
<input type="hidden" value="${delReq.name}" name="name">
<p>
	메뉴명:<br/>${delReq.name}(을)를 삭제하시겠습니까?
</p>
<input type="submit" value="메뉴 삭제" onclick="clickEvent()">
</form>
<script>

function clickEvent(){
	
	opener.parent.location.reload();
	window.close();
	
}
</script>
</body>
</html>