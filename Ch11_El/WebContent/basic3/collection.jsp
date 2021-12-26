<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[][] major = new String[4][2];
	major[0][0]=major[0][1]="컴공";
	major[1][0]=major[1][1]="정통";
	major[2][0]=major[2][1]="경영";
	major[3][0]=major[3][1]="행정";
	request.setAttribute("major", major);
	

	ArrayList<String> subject = new ArrayList<>();
	subject.add(0, "SQL응용");
	subject.add(1, "JSP/Servlet");
	subject.add(2, "ERP정보시스템");
	request.setAttribute("arrayList", subject);
	
 	HashMap<String,String> prof = new HashMap<>();
 	prof.put("학과", "컴퓨터공학과");
 	prof.put("성명", "강준상");
 	prof.put("직위", "교수");
 	prof.put("전화", "010-123-4567");
 	request.setAttribute("map", prof);
	
 	//RequestDispatcher d = request.getRequestDispatcher("collectionResult.jsp");
	//d.forward(request, response);
%>
1. 학과 배열 출력-<br>
0번째: ${major[0][0]}, ${major[0][1]}<br>
1번째: ${major[1][0]}, ${major[1][1]}<br>
2번째: ${major[2][0]}, ${major[2][1]}<br>
3번째: ${major[3][0]}, ${major[3][1]}<br>
<br>
2. 과목 ArrayList 출력-<br>
First:${arrayList[0] }; <br>
Second:${arrayList[1] };<br>
Third:${arrayList[2] };<br>
<br>
3.교수 Map 출력-<br>
<!-- jst1에서 for문에 해당하는 부분 -->
<c:forEach var="prof" items="<%=prof %>">
${prof.key }:${prof.value }<br>
</c:forEach><br>

학과: ${map["학과"]}<br>
성명: ${map["성명"]}<br>
직위: ${map["직위"]}<br>
전화: ${map["전화"]}<br>
<br>
학과: ${requestScope.map["학과"]}<br>
성명: ${requestScope.map["성명"]}<br>
직위: ${requestScope.map["직위"]}<br>
전화: ${requestScope.map["전화"]}<br>
</body>
</html>