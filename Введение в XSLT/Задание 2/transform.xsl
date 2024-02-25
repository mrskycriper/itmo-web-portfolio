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
            <xsl:apply-templates select="@*|node()"/>
        </svg>
    </xsl:template>
    <xsl:template match="графика/@ширина">
        <xsl:attribute name="width">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="графика/@высота">
        <xsl:attribute name="height">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="эллипс">
        <ellipse>
            <xsl:apply-templates select="@*|node()"/>
        </ellipse>
    </xsl:template>
    <xsl:template match="эллипс/@заливка">
        <xsl:attribute name="fill">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="эллипс/@ободок">
        <xsl:attribute name="stroke">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="эллипс/@ширина-ободка">
        <xsl:attribute name="stroke-width">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="эллипс/@cx">
        <xsl:attribute name="cx">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="эллипс/@cy">
        <xsl:attribute name="cy">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="эллипс/@rx">
        <xsl:attribute name="rx">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="эллипс/@ry">
        <xsl:attribute name="ry">
            <xsl:value-of select="current()"/>
        </xsl:attribute>
    </xsl:template>
</xsl:stylesheet>