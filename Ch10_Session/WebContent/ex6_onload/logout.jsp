<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String nowLoginTime = session.getAttribute("nowLoginTime").toString();
	session.removeAttribute("id");
	session.setAttribute("lastLoginTime", nowLoginTime);
	response.sendRedirect("left.jsp");
%>