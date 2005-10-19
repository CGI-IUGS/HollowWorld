<?xml version="1.0" encoding="UTF-8"?>
<!-- A stylesheet to convert the XMI 1.0 output of Enterprise Architect into something that
at least validates against the XMI10.DTD obtained by Simon Cox from OMG. -->
<!-- Author: Marcus Sen -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="XMI10.dtd"/>
	<!-- We have to use a key not id() as input document won't have validated -->
	<xsl:key name="xmi.ids" match="*" use="@xmi.id"/>
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<!-- Re-order the children of Foundation.Core.Class according to the DTD -->
	<xsl:template match="Foundation.Core.Class">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.name"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.visibility"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.isSpecification"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.isRoot"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.isLeaf"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.isAbstract"/>
			<xsl:apply-templates select="Foundation.Core.Class.isActive"/>
			<xsl:apply-templates select="XMI.extension"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.namespace"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.clientDependency"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.constraint"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.supplierDependency"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.presentation"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.targetFlow"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.sourceFlow"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.templateParameter3"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.binding"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.comment"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.elementResidence"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.templateParameter2"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.stereotype"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.behavior"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.classifierRole"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.collaboration"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.partition"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.elementImport"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.generalization"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.specialization"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.participant"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.powertypeRange"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.instance"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.createAction"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.classifierRole"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.collaboration"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.classifierInState"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.objectFlowState"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.templateParameter"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.taggedValue"/>
			<xsl:apply-templates select="Foundation.Core.Namespace.ownedElement"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.feature"/>
		</xsl:copy>
	</xsl:template>
	<!-- Re-order the children of Foundation.Core.AssociationClass according to the DTD -->
	<xsl:template match="Foundation.Core.AssociationClass">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.name"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.visibility"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.isSpecification"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.isRoot"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.isLeaf"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.isAbstract"/>
			<xsl:apply-templates select="Foundation.Core.Class.isActive"/>
			<xsl:apply-templates select="XMI.extension"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.namespace"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.clientDependency"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.constraint"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.supplierDependency"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.presentation"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.targetFlow"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.sourceFlow"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.templateParameter3"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.binding"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.comment"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.elementResidence"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.templateParameter2"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.stereotype"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.behavior"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.classifierRole"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.collaboration"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.partition"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.elementImport"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.generalization"/>
			<xsl:apply-templates select="Foundation.Core.GeneralizableElement.specialization"/>
			<xsl:apply-templates select="Foundation.Core.Association.link"/>
			<xsl:apply-templates select="Foundation.Core.Association.associationRole"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.participant"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.powertypeRange"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.instance"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.createAction"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.classifierRole"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.collaboration"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.classifierInState"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.objectFlowState"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.templateParameter"/>
			<xsl:apply-templates select="Foundation.Core.ModelElement.taggedValue"/>
			<xsl:apply-templates select="Foundation.Core.Association.connection"/>
			<xsl:apply-templates select="Foundation.Core.Namespace.ownedElement"/>
			<xsl:apply-templates select="Foundation.Core.Classifier.feature"/>
		</xsl:copy>
	</xsl:template>
	<!-- Drop the EANoteLink elements created by EA -->
	<!-- Create a dummy target element for the xmi.idrefs that pointed to non-existent targets
and change these dangling xmi.idrefs to point at it. Stops validation error but not sure if it really fixes file. -->
	<xsl:template match="XMI.extensions">
		<XMI.extensions xmi.extender="MarcusSen">
			<XMI.extension xmi.id="MASE_missing" xmi.extenderID="MASE_missing" xmi.extender="MarcusSen">Dummy target for idrefs that were dangling.</XMI.extension>
		</XMI.extensions>
	</xsl:template>
	<xsl:template match="@xmi.idref">
		<xsl:choose>
			<xsl:when test="key('xmi.ids', .)">
				<xsl:copy/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:attribute name="xmi.idref">MASE_missing</xsl:attribute>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- Everything else copied through unchanged -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
