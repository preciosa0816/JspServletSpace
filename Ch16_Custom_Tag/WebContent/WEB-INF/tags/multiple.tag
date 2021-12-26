<!-- 몸체 내용을 반복적으로 사용하기 -->

<%@tag pageEncoding="utf-8"%>
<%@tag trimDirectiveWhitespaces="true"%>
<%@attribute name="count" required="true" type="java.lang.Integer"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach begin="${1}" end="${count}">
<jsp:doBody />
</c:forEach>
