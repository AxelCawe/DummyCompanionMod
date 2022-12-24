<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
	
	<!-- Vlandia -->
	<xsl:template match="Culture[@id='vlandia']/notable_and_wanderer_templates">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
			<template name="NPCCharacter.dummycompanionmod_thedummy" />
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>