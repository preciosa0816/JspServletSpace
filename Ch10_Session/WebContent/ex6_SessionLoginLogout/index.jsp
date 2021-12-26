<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="refresh">
<title>Insert title here</title>
</head>
<body>
<table width="100%" border="1">
<tr>
<td><iframe src="left.jsp" height="400" width="350" name="left" onload="iRefresh()"></iframe></td>
<td><iframe src="right.jsp" height="400" width="450" name="right" id="right"></iframe></td>
</tr>
</table>
<script type="text/javascript">
function iRefresh(){  
    right.location.href="right.jsp";  //iframe의 경로를 입력해 준다. -->
   // setTimeout("iRefresh()",1000);   //1초 간격으로 수정해 주기. -->
    } 
 //   iRefresh(); //onload : 수정때만 불러오기 setTimeout을 설정하면 1초당 무한새로고침
</script>
</body>
</html>