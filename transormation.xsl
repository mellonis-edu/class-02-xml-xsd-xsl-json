<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml"/>
    <!--<xsl:output method="html"/>-->
    <!--<xsl:output method="text"/>-->

    <xsl:template match="/">
        <ul>
            <xsl:apply-templates select="/class/student">
                <xsl:sort select="firstName"/>
            </xsl:apply-templates>
        </ul>
    </xsl:template>

    <xsl:template match="student">
        <li id1="id-{@id}">
            <xsl:attribute name="id2">
                <xsl:value-of select="concat('id-', @id)"/>
            </xsl:attribute>

            <xsl:text>(</xsl:text>
            <xsl:value-of select="position()"/>
            <xsl:text>) - </xsl:text>
            <xsl:value-of select="firstName"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="lastName"/>

            <xsl:comment>
                <xsl:value-of select="@id"/>
            </xsl:comment>
        </li>
    </xsl:template>
</xsl:stylesheet>
