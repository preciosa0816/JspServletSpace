<!-- tag 디렉티브의 body-content속성의 값을 tagdependent로 지정하면 몸체 내용에 포함된 el이나 액션태그를 처리하지 않고
몸체 내용 자체를 텍스트 값으로 사용함.
escapeXml="true" => '<,>'를 치환해서 출력 -->
<%@tag body-content="tagdependent" pageEncoding="utf-8"%>
<%@tag trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:doBody var="bodyText"/>
<c:out value="${bodyText}" escapeXml="true"/>