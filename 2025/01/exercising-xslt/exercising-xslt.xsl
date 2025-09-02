<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output doctype-public="" doctype-system="" indent="yes" method="html"/>
  <xsl:template match="/">
    <xsl:for-each select="/x-ml/x-ml-item">
      <x-ml-item-title>
        <link href="https://kherrick.github.io/x-ml-data/components/x-ml-item-title/x-ml-item-title.css" rel="stylesheet"/>
        <h3>
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="normalize-space(x-ml-item-link)"/>
            </xsl:attribute>
            <xsl:value-of select="normalize-space(x-ml-item-title)"/>
          </a>
        </h3>
      </x-ml-item-title>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>