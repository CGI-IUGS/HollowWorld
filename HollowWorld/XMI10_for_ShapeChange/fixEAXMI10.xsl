<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0" >
<xsl:output method="xml" indent="yes" doctype-system="UML13.dtd"/>

<xsl:template match="/XMI">

<XMI xmi.version="1.0" timestamp="2005 fixed Rob">

<xsl:apply-templates select="XMI.header"/>

<XMI.content>
<xsl:apply-templates select="XMI.content/*"/>
<xsl:apply-templates select="/XMI/XMI.extensions/Foundation.Core.ModelElement"/>
</XMI.content>
<xsl:apply-templates select="XMI.extensions"/>

</XMI>
</xsl:template>

<xsl:template match="XMI.header">
<xsl:copy-of select="."/>				
</xsl:template>

<xsl:template match="XMI.content/*">
<xsl:copy-of select="."/>
</xsl:template>

	
<xsl:template match="/XMI/XMI.extensions/Foundation.Core.ModelElement">
<xsl:copy-of select="."/>
</xsl:template>


<xsl:template match="XMI.extensions">
<!-- <XMI.extensions/> 	-->	
</xsl:template>


</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="XMI" userelativepaths="yes" externalpreview="no" url="WQDP.xml" htmlbaseurl="" outputurl="..\..\..\..\..\..\..\..\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\ugas\xmi\WQDP.xml" processortype="internal" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition><template match="/WMS_Viewer_Context"><block path="webmapapplication/map/spatialcontext/xsl:apply&#x2D;templates" x="171" y="180"/><block path="webmapapplication/map/spatialcontext/xsl:apply&#x2D;templates[1]" x="211" y="180"/><block path="webmapapplication/map/spatialcontext/xsl:apply&#x2D;templates[2]" x="131" y="180"/><block path="webmapapplication/map/spatialcontext/xsl:apply&#x2D;templates[3]" x="91" y="180"/></template></MapperBlockPosition></MapperMetaTag>
</metaInformation>
-->