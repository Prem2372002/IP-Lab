<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Student Grades</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Grade</th>
          </tr>
          <xsl:apply-templates select="students/student"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="student">
    <xsl:if test="grade='A'">
      <tr bgcolor="#99FF99">
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="grade"/></td>
      </tr>
    </xsl:if>
    <xsl:if test="grade!='A'">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="grade"/></td>
      </tr>
    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>
