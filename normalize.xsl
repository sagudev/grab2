<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output encoding="UTF-8" indent="yes"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()[not(self::display-name)]"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="channel/icon">
        <xsl:copy-of select="../display-name"/>
        <xsl:copy-of select="."/>
  </xsl:template>

</xsl:stylesheet>