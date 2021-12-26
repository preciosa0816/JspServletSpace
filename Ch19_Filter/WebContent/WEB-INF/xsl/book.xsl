<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes" encoding="utf-8"/>
	<xsl:template match="list">
		<html>
		<head>
		<title>BOOK LIST</title>
		<body>
		현재 등록되어 있는 책의 목록은 다음과 같습니다.
		<ul>
			<xsl:for-each select="book">
			<li><b><xsl:value-of select="title"/></b>
			(<xsl:value-of select="price"/>WON)
			<br/>
			<i><xsl:value-of select="author"/></i>
			</li>
			</xsl:for-each>
		</ul>
		</body>
		</head>
		</html>
	</xsl:template>
</xsl:stylesheet>