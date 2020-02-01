<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h3>Student information </h3>
<table border="1">
<tr bgcolor="#9acd32">
<th>name</th>
<th>lastname</th>
<th>address</th>
<th>roll</th>
</tr>
<xsl:for-each select="department/student[address='sangli']">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="lastname"/></td>
	   <td><xsl:value-of select="address"/></td>
	    <td><xsl:value-of select="roll"/></td>
    </tr>
    
    </xsl:for-each>
 
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>