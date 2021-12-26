
<%--'<jsp:doBody>'액션태그를 이용해서 전달받은 몸체 내용에서 HTML태그를 제거해주는 기능을 제공하는 태그파일 --%>

<%@ tag body-content="scriptless" pageEncoding="utf-8"%>
<%@ attribute name="length" type="java.lang.Integer" %>
<%@ attribute name="trail" %>
<%@ attribute name="trim"%>
<jsp:doBody var="content" scope="page"/>
<%
	String content=(String)jspContext.getAttribute("content");
	if(trim!=null&&trim.equals("true")){
		content=content.trim();
	}
	content=content.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?>", "");
	
	if(length!=null && length.intValue()>0 && content.length()>length.intValue()){
		content=content.substring(0,length.intValue()); //지정된 길이만큼 자르기 
		if(trail!=null){
			content=content+trail;
		}
	}
	
%>
<%=content %>