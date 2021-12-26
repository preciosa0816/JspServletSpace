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
<form action="modify.do" method="post">
<input type="hidden" value="${modReq.no}" name="no">
<%-- ${modReq.name}를 수정합니다.<br> --%>
<!-- 수정을 원하지 않으면 종료해주세요 -->
<p>
	음료명:<br/><input type="text" name="name" value="${modReq.name}">
	<c:if test="${errors.newname}">음료명을 입력하세요.</c:if>
</p>
<p>
	가격:<br/><input type="text" name="price" value="${modReq.price}">
	<c:if test="${errors.price}">가격을 입력하세요.</c:if>	
</p>
<p>
	음료종류:<br/><select name="drinktype">
				<option value="coffee" selected>coffee</option>
				<option value="ade" >ade</option>
				<option value="tea" >tea</option>
				<option value="blended" >blended</option>
				<option value="etc" >etc</option>
			</select>
	<c:if test="${errors.drinktype}">음료종류를 입력하세요.</c:if>	
</p>
<input type="submit" value="메뉴 수정" onclick="clickEvent()">
</form>
<script>

function clickEvent(){
	
	opener.parent.location.reload();
	window.close();
	
}
</script>
</body>
</html>