<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%-- <fmt:setLocale value="en"/> --%>
<fmt:bundle basename="resource.Intro">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사소개</title>
</head>
<body>
<h3><fmt:message key="TITLE"/></h3>
<fmt:message key="GREETING"/><br><br>
<fmt:message key="BODY"/><br>
<h5><fmt:message key="COMPANY_NAME"/></h5>


</body>
</html>
</fmt:bundle>