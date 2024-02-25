<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="графика">
        <svg xmlns="http://www.w3.org/2000/svg">
            <xsl:apply-templates/>
        </svg>
    </xsl:template>
    <xsl:template match="графика/@ширина">
        <xsl:attribute name="width" select="current()"></xsl:attribute>
    </xsl:template>
    <xsl:template match="графика/@высота">
        <xsl:attribute name="height">
            <xsl:value-of select="current()" />
        </xsl:attribute>
    </xsl:template>
</xsl:stylesheet>