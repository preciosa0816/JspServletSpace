<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope.jsp</title>
</head>
<body>
<h3>scope.jsp데이터 보기 </h3>
pageName의 속성값(JSP) :: <%=pageContext.getAttribute("pageName") %><br>
pageName의 속성값(EL) :: ${pageScope.pageName}<br><br>
requestName의 속성값(JSP) :: <%=request.getAttribute("requestName") %><br>
requestName의 속성값(EL) :: ${requestScope.requestName}<br><br>
=> 접근불가능(forward, include가 없기 때문 )
<br><br>
sessionName의 속성값(JSP) :: <%=session.getAttribute("sessionName") %><br>
sessionName의 속성값(EL) :: ${sessionScope.sessionName}<br><br>
applicationName의 속성값(JSP) :: <%=application.getAttribute("applicationName") %><br>
applicationName의 속성값(EL) :: ${applicationScope.applicationName}<br><br>
=>scope.jsp를 먼저 시작하고 서버가 정지되지않았다면 session과 applicaion에 올려놓은 값들은 접근가능(forward, include가 있기 때문 )<br>
=>서버를 재시작하면 값이 x

</body>
</html>