/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_StepAP214_AppliedApprovalAssignment.hxx>
#include<Handle_StepAP214_AppliedDateAndTimeAssignment.hxx>
#include<Handle_StepAP214_AppliedDateAssignment.hxx>
#include<Handle_StepAP214_AppliedDocumentReference.hxx>
#include<Handle_StepAP214_AppliedExternalIdentificationAssignment.hxx>
#include<Handle_StepAP214_AppliedGroupAssignment.hxx>
#include<Handle_StepAP214_AppliedOrganizationAssignment.hxx>
#include<Handle_StepAP214_AppliedPersonAndOrganizationAssignment.hxx>
#include<Handle_StepAP214_AppliedPresentedItem.hxx>
#include<Handle_StepAP214_AppliedSecurityClassificationAssignment.hxx>
#include<Handle_StepAP214_AutoDesignActualDateAndTimeAssignment.hxx>
#include<Handle_StepAP214_AutoDesignActualDateAssignment.hxx>
#include<Handle_StepAP214_AutoDesignApprovalAssignment.hxx>
#include<Handle_StepAP214_AutoDesignDateAndPersonAssignment.hxx>
#include<Handle_StepAP214_AutoDesignDocumentReference.hxx>
#include<Handle_StepAP214_AutoDesignGroupAssignment.hxx>
#include<Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx>
#include<Handle_StepAP214_AutoDesignNominalDateAssignment.hxx>
#include<Handle_StepAP214_AutoDesignOrganizationAssignment.hxx>
#include<Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx>
#include<Handle_StepAP214_AutoDesignPresentedItem.hxx>
#include<Handle_StepAP214_AutoDesignSecurityClassificationAssignment.hxx>
#include<Handle_StepAP214_Class.hxx>
#include<Handle_StepAP214_ExternallyDefinedClass.hxx>
#include<Handle_StepAP214_ExternallyDefinedGeneralProperty.hxx>
#include<Handle_StepAP214_HArray1OfApprovalItem.hxx>
#include<Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem.hxx>
#include<Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx>
#include<Handle_StepAP214_HArray1OfAutoDesignDatedItem.hxx>
#include<Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem.hxx>
#include<Handle_StepAP214_HArray1OfAutoDesignGroupedItem.hxx>
#include<Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect.hxx>
#include<Handle_StepAP214_HArray1OfAutoDesignReferencingItem.hxx>
#include<Handle_StepAP214_HArray1OfDateAndTimeItem.hxx>
#include<Handle_StepAP214_HArray1OfDateItem.hxx>
#include<Handle_StepAP214_HArray1OfDocumentReferenceItem.hxx>
#include<Handle_StepAP214_HArray1OfExternalIdentificationItem.hxx>
#include<Handle_StepAP214_HArray1OfGroupItem.hxx>
#include<Handle_StepAP214_HArray1OfOrganizationItem.hxx>
#include<Handle_StepAP214_HArray1OfPersonAndOrganizationItem.hxx>
#include<Handle_StepAP214_HArray1OfPresentedItemSelect.hxx>
#include<Handle_StepAP214_HArray1OfSecurityClassificationItem.hxx>
#include<Handle_StepAP214_Protocol.hxx>
#include<Handle_StepAP214_RepItemGroup.hxx>
#include<StepAP214.hxx>
#include<StepAP214_AppliedApprovalAssignment.hxx>
#include<StepAP214_AppliedDateAndTimeAssignment.hxx>
#include<StepAP214_AppliedDateAssignment.hxx>
#include<StepAP214_AppliedDocumentReference.hxx>
#include<StepAP214_AppliedExternalIdentificationAssignment.hxx>
#include<StepAP214_AppliedGroupAssignment.hxx>
#include<StepAP214_AppliedOrganizationAssignment.hxx>
#include<StepAP214_AppliedPersonAndOrganizationAssignment.hxx>
#include<StepAP214_AppliedPresentedItem.hxx>
#include<StepAP214_AppliedSecurityClassificationAssignment.hxx>
#include<StepAP214_ApprovalItem.hxx>
#include<StepAP214_Array1OfApprovalItem.hxx>
#include<StepAP214_Array1OfAutoDesignDateAndPersonItem.hxx>
#include<StepAP214_Array1OfAutoDesignDateAndTimeItem.hxx>
#include<StepAP214_Array1OfAutoDesignDatedItem.hxx>
#include<StepAP214_Array1OfAutoDesignGeneralOrgItem.hxx>
#include<StepAP214_Array1OfAutoDesignGroupedItem.hxx>
#include<StepAP214_Array1OfAutoDesignPresentedItemSelect.hxx>
#include<StepAP214_Array1OfAutoDesignReferencingItem.hxx>
#include<StepAP214_Array1OfDateAndTimeItem.hxx>
#include<StepAP214_Array1OfDateItem.hxx>
#include<StepAP214_Array1OfDocumentReferenceItem.hxx>
#include<StepAP214_Array1OfExternalIdentificationItem.hxx>
#include<StepAP214_Array1OfGroupItem.hxx>
#include<StepAP214_Array1OfOrganizationItem.hxx>
#include<StepAP214_Array1OfPersonAndOrganizationItem.hxx>
#include<StepAP214_Array1OfPresentedItemSelect.hxx>
#include<StepAP214_Array1OfSecurityClassificationItem.hxx>
#include<StepAP214_AutoDesignActualDateAndTimeAssignment.hxx>
#include<StepAP214_AutoDesignActualDateAssignment.hxx>
#include<StepAP214_AutoDesignApprovalAssignment.hxx>
#include<StepAP214_AutoDesignDateAndPersonAssignment.hxx>
#include<StepAP214_AutoDesignDateAndPersonItem.hxx>
#include<StepAP214_AutoDesignDateAndTimeItem.hxx>
#include<StepAP214_AutoDesignDatedItem.hxx>
#include<StepAP214_AutoDesignDocumentReference.hxx>
#include<StepAP214_AutoDesignGeneralOrgItem.hxx>
#include<StepAP214_AutoDesignGroupAssignment.hxx>
#include<StepAP214_AutoDesignGroupedItem.hxx>
#include<StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx>
#include<StepAP214_AutoDesignNominalDateAssignment.hxx>
#include<StepAP214_AutoDesignOrganizationAssignment.hxx>
#include<StepAP214_AutoDesignOrganizationItem.hxx>
#include<StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx>
#include<StepAP214_AutoDesignPresentedItem.hxx>
#include<StepAP214_AutoDesignPresentedItemSelect.hxx>
#include<StepAP214_AutoDesignReferencingItem.hxx>
#include<StepAP214_AutoDesignSecurityClassificationAssignment.hxx>
#include<StepAP214_Class.hxx>
#include<StepAP214_DateAndTimeItem.hxx>
#include<StepAP214_DateItem.hxx>
#include<StepAP214_DocumentReferenceItem.hxx>
#include<StepAP214_ExternalIdentificationItem.hxx>
#include<StepAP214_ExternallyDefinedClass.hxx>
#include<StepAP214_ExternallyDefinedGeneralProperty.hxx>
#include<StepAP214_GroupItem.hxx>
#include<StepAP214_HArray1OfApprovalItem.hxx>
#include<StepAP214_HArray1OfAutoDesignDateAndPersonItem.hxx>
#include<StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx>
#include<StepAP214_HArray1OfAutoDesignDatedItem.hxx>
#include<StepAP214_HArray1OfAutoDesignGeneralOrgItem.hxx>
#include<StepAP214_HArray1OfAutoDesignGroupedItem.hxx>
#include<StepAP214_HArray1OfAutoDesignPresentedItemSelect.hxx>
#include<StepAP214_HArray1OfAutoDesignReferencingItem.hxx>
#include<StepAP214_HArray1OfDateAndTimeItem.hxx>
#include<StepAP214_HArray1OfDateItem.hxx>
#include<StepAP214_HArray1OfDocumentReferenceItem.hxx>
#include<StepAP214_HArray1OfExternalIdentificationItem.hxx>
#include<StepAP214_HArray1OfGroupItem.hxx>
#include<StepAP214_HArray1OfOrganizationItem.hxx>
#include<StepAP214_HArray1OfPersonAndOrganizationItem.hxx>
#include<StepAP214_HArray1OfPresentedItemSelect.hxx>
#include<StepAP214_HArray1OfSecurityClassificationItem.hxx>
#include<StepAP214_OrganizationItem.hxx>
#include<StepAP214_PersonAndOrganizationItem.hxx>
#include<StepAP214_PresentedItemSelect.hxx>
#include<StepAP214_Protocol.hxx>
#include<StepAP214_RepItemGroup.hxx>
#include<StepAP214_SecurityClassificationItem.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<StepBasic_Action.hxx>
#include<StepBasic_ActionAssignment.hxx>
#include<StepBasic_ActionMethod.hxx>
#include<StepBasic_ActionRequestAssignment.hxx>
#include<StepBasic_ActionRequestSolution.hxx>
#include<StepBasic_Address.hxx>
#include<StepBasic_AheadOrBehind.hxx>
#include<StepBasic_ApplicationContext.hxx>
#include<StepBasic_ApplicationContextElement.hxx>
#include<StepBasic_ApplicationProtocolDefinition.hxx>
#include<StepBasic_Approval.hxx>
#include<StepBasic_ApprovalAssignment.hxx>
#include<StepBasic_ApprovalDateTime.hxx>
#include<StepBasic_ApprovalPersonOrganization.hxx>
#include<StepBasic_ApprovalRelationship.hxx>
#include<StepBasic_ApprovalRole.hxx>
#include<StepBasic_ApprovalStatus.hxx>
#include<StepBasic_AreaUnit.hxx>
#include<StepBasic_Array1OfApproval.hxx>
#include<StepBasic_Array1OfDerivedUnitElement.hxx>
#include<StepBasic_Array1OfDocument.hxx>
#include<StepBasic_Array1OfNamedUnit.hxx>
#include<StepBasic_Array1OfOrganization.hxx>
#include<StepBasic_Array1OfPerson.hxx>
#include<StepBasic_Array1OfProduct.hxx>
#include<StepBasic_Array1OfProductContext.hxx>
#include<StepBasic_Array1OfProductDefinition.hxx>
#include<StepBasic_Array1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_CalendarDate.hxx>
#include<StepBasic_Certification.hxx>
#include<StepBasic_CertificationAssignment.hxx>
#include<StepBasic_CertificationType.hxx>
#include<StepBasic_CharacterizedObject.hxx>
#include<StepBasic_Contract.hxx>
#include<StepBasic_ContractAssignment.hxx>
#include<StepBasic_ContractType.hxx>
#include<StepBasic_ConversionBasedUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndAreaUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndLengthUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndMassUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndRatioUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndTimeUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndVolumeUnit.hxx>
#include<StepBasic_CoordinatedUniversalTimeOffset.hxx>
#include<StepBasic_Date.hxx>
#include<StepBasic_DateAndTime.hxx>
#include<StepBasic_DateAndTimeAssignment.hxx>
#include<StepBasic_DateAssignment.hxx>
#include<StepBasic_DateRole.hxx>
#include<StepBasic_DateTimeRole.hxx>
#include<StepBasic_DateTimeSelect.hxx>
#include<StepBasic_DerivedUnit.hxx>
#include<StepBasic_DerivedUnitElement.hxx>
#include<StepBasic_DesignContext.hxx>
#include<StepBasic_DigitalDocument.hxx>
#include<StepBasic_DimensionalExponents.hxx>
#include<StepBasic_Document.hxx>
#include<StepBasic_DocumentFile.hxx>
#include<StepBasic_DocumentProductAssociation.hxx>
#include<StepBasic_DocumentProductEquivalence.hxx>
#include<StepBasic_DocumentReference.hxx>
#include<StepBasic_DocumentRelationship.hxx>
#include<StepBasic_DocumentRepresentationType.hxx>
#include<StepBasic_DocumentType.hxx>
#include<StepBasic_DocumentUsageConstraint.hxx>
#include<StepBasic_Effectivity.hxx>
#include<StepBasic_EffectivityAssignment.hxx>
#include<StepBasic_EulerAngles.hxx>
#include<StepBasic_ExternalIdentificationAssignment.hxx>
#include<StepBasic_ExternalSource.hxx>
#include<StepBasic_ExternallyDefinedItem.hxx>
#include<StepBasic_GeneralProperty.hxx>
#include<StepBasic_Group.hxx>
#include<StepBasic_GroupAssignment.hxx>
#include<StepBasic_GroupRelationship.hxx>
#include<StepBasic_HArray1OfApproval.hxx>
#include<StepBasic_HArray1OfDerivedUnitElement.hxx>
#include<StepBasic_HArray1OfDocument.hxx>
#include<StepBasic_HArray1OfNamedUnit.hxx>
#include<StepBasic_HArray1OfOrganization.hxx>
#include<StepBasic_HArray1OfPerson.hxx>
#include<StepBasic_HArray1OfProduct.hxx>
#include<StepBasic_HArray1OfProductContext.hxx>
#include<StepBasic_HArray1OfProductDefinition.hxx>
#include<StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_IdentificationAssignment.hxx>
#include<StepBasic_IdentificationRole.hxx>
#include<StepBasic_LengthMeasureWithUnit.hxx>
#include<StepBasic_LengthUnit.hxx>
#include<StepBasic_LocalTime.hxx>
#include<StepBasic_MassMeasureWithUnit.hxx>
#include<StepBasic_MassUnit.hxx>
#include<StepBasic_MeasureValueMember.hxx>
#include<StepBasic_MeasureWithUnit.hxx>
#include<StepBasic_MechanicalContext.hxx>
#include<StepBasic_NameAssignment.hxx>
#include<StepBasic_NamedUnit.hxx>
#include<StepBasic_ObjectRole.hxx>
#include<StepBasic_OrdinalDate.hxx>
#include<StepBasic_Organization.hxx>
#include<StepBasic_OrganizationAssignment.hxx>
#include<StepBasic_OrganizationRole.hxx>
#include<StepBasic_OrganizationalAddress.hxx>
#include<StepBasic_Person.hxx>
#include<StepBasic_PersonAndOrganization.hxx>
#include<StepBasic_PersonAndOrganizationAssignment.hxx>
#include<StepBasic_PersonAndOrganizationRole.hxx>
#include<StepBasic_PersonOrganizationSelect.hxx>
#include<StepBasic_PersonalAddress.hxx>
#include<StepBasic_PhysicallyModeledProductDefinition.hxx>
#include<StepBasic_PlaneAngleMeasureWithUnit.hxx>
#include<StepBasic_PlaneAngleUnit.hxx>
#include<StepBasic_Product.hxx>
#include<StepBasic_ProductCategory.hxx>
#include<StepBasic_ProductCategoryRelationship.hxx>
#include<StepBasic_ProductConceptContext.hxx>
#include<StepBasic_ProductContext.hxx>
#include<StepBasic_ProductDefinition.hxx>
#include<StepBasic_ProductDefinitionContext.hxx>
#include<StepBasic_ProductDefinitionEffectivity.hxx>
#include<StepBasic_ProductDefinitionFormation.hxx>
#include<StepBasic_ProductDefinitionFormationRelationship.hxx>
#include<StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx>
#include<StepBasic_ProductDefinitionRelationship.hxx>
#include<StepBasic_ProductDefinitionWithAssociatedDocuments.hxx>
#include<StepBasic_ProductOrFormationOrDefinition.hxx>
#include<StepBasic_ProductRelatedProductCategory.hxx>
#include<StepBasic_ProductType.hxx>
#include<StepBasic_RatioMeasureWithUnit.hxx>
#include<StepBasic_RatioUnit.hxx>
#include<StepBasic_RoleAssociation.hxx>
#include<StepBasic_RoleSelect.hxx>
#include<StepBasic_SecurityClassification.hxx>
#include<StepBasic_SecurityClassificationAssignment.hxx>
#include<StepBasic_SecurityClassificationLevel.hxx>
#include<StepBasic_SiPrefix.hxx>
#include<StepBasic_SiUnit.hxx>
#include<StepBasic_SiUnitAndAreaUnit.hxx>
#include<StepBasic_SiUnitAndLengthUnit.hxx>
#include<StepBasic_SiUnitAndMassUnit.hxx>
#include<StepBasic_SiUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_SiUnitAndRatioUnit.hxx>
#include<StepBasic_SiUnitAndSolidAngleUnit.hxx>
#include<StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx>
#include<StepBasic_SiUnitAndTimeUnit.hxx>
#include<StepBasic_SiUnitAndVolumeUnit.hxx>
#include<StepBasic_SiUnitName.hxx>
#include<StepBasic_SizeMember.hxx>
#include<StepBasic_SizeSelect.hxx>
#include<StepBasic_SolidAngleMeasureWithUnit.hxx>
#include<StepBasic_SolidAngleUnit.hxx>
#include<StepBasic_Source.hxx>
#include<StepBasic_SourceItem.hxx>
#include<StepBasic_ThermodynamicTemperatureUnit.hxx>
#include<StepBasic_TimeMeasureWithUnit.hxx>
#include<StepBasic_TimeUnit.hxx>
#include<StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<StepBasic_Unit.hxx>
#include<StepBasic_VersionedActionRequest.hxx>
#include<StepBasic_VolumeUnit.hxx>
#include<StepBasic_WeekOfYearAndDayDate.hxx>
#include<StepGeom_Array1OfBoundaryCurve.hxx>
#include<StepGeom_Array1OfCartesianPoint.hxx>
#include<StepGeom_Array1OfCompositeCurveSegment.hxx>
#include<StepGeom_Array1OfCurve.hxx>
#include<StepGeom_Array1OfPcurveOrSurface.hxx>
#include<StepGeom_Array1OfSurfaceBoundary.hxx>
#include<StepGeom_Array1OfTrimmingSelect.hxx>
#include<StepGeom_Array2OfCartesianPoint.hxx>
#include<StepGeom_Array2OfSurfacePatch.hxx>
#include<StepGeom_Axis1Placement.hxx>
#include<StepGeom_Axis2Placement.hxx>
#include<StepGeom_Axis2Placement2d.hxx>
#include<StepGeom_Axis2Placement3d.hxx>
#include<StepGeom_BSplineCurve.hxx>
#include<StepGeom_BSplineCurveForm.hxx>
#include<StepGeom_BSplineCurveWithKnots.hxx>
#include<StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx>
#include<StepGeom_BSplineSurface.hxx>
#include<StepGeom_BSplineSurfaceForm.hxx>
#include<StepGeom_BSplineSurfaceWithKnots.hxx>
#include<StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx>
#include<StepGeom_BezierCurve.hxx>
#include<StepGeom_BezierCurveAndRationalBSplineCurve.hxx>
#include<StepGeom_BezierSurface.hxx>
#include<StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx>
#include<StepGeom_BoundaryCurve.hxx>
#include<StepGeom_BoundedCurve.hxx>
#include<StepGeom_BoundedSurface.hxx>
#include<StepGeom_CartesianPoint.hxx>
#include<StepGeom_CartesianTransformationOperator.hxx>
#include<StepGeom_CartesianTransformationOperator2d.hxx>
#include<StepGeom_CartesianTransformationOperator3d.hxx>
#include<StepGeom_Circle.hxx>
#include<StepGeom_CompositeCurve.hxx>
#include<StepGeom_CompositeCurveOnSurface.hxx>
#include<StepGeom_CompositeCurveSegment.hxx>
#include<StepGeom_Conic.hxx>
#include<StepGeom_ConicalSurface.hxx>
#include<StepGeom_Curve.hxx>
#include<StepGeom_CurveBoundedSurface.hxx>
#include<StepGeom_CurveOnSurface.hxx>
#include<StepGeom_CurveReplica.hxx>
#include<StepGeom_CylindricalSurface.hxx>
#include<StepGeom_DegeneratePcurve.hxx>
#include<StepGeom_DegenerateToroidalSurface.hxx>
#include<StepGeom_Direction.hxx>
#include<StepGeom_ElementarySurface.hxx>
#include<StepGeom_Ellipse.hxx>
#include<StepGeom_EvaluatedDegeneratePcurve.hxx>
#include<StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx>
#include<StepGeom_GeometricRepresentationContext.hxx>
#include<StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx>
#include<StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx>
#include<StepGeom_GeometricRepresentationItem.hxx>
#include<StepGeom_HArray1OfBoundaryCurve.hxx>
#include<StepGeom_HArray1OfCartesianPoint.hxx>
#include<StepGeom_HArray1OfCompositeCurveSegment.hxx>
#include<StepGeom_HArray1OfCurve.hxx>
#include<StepGeom_HArray1OfPcurveOrSurface.hxx>
#include<StepGeom_HArray1OfSurfaceBoundary.hxx>
#include<StepGeom_HArray1OfTrimmingSelect.hxx>
#include<StepGeom_HArray2OfCartesianPoint.hxx>
#include<StepGeom_HArray2OfSurfacePatch.hxx>
#include<StepGeom_Hyperbola.hxx>
#include<StepGeom_IntersectionCurve.hxx>
#include<StepGeom_KnotType.hxx>
#include<StepGeom_Line.hxx>
#include<StepGeom_OffsetCurve3d.hxx>
#include<StepGeom_OffsetSurface.hxx>
#include<StepGeom_OrientedSurface.hxx>
#include<StepGeom_OuterBoundaryCurve.hxx>
#include<StepGeom_Parabola.hxx>
#include<StepGeom_Pcurve.hxx>
#include<StepGeom_PcurveOrSurface.hxx>
#include<StepGeom_Placement.hxx>
#include<StepGeom_Plane.hxx>
#include<StepGeom_Point.hxx>
#include<StepGeom_PointOnCurve.hxx>
#include<StepGeom_PointOnSurface.hxx>
#include<StepGeom_PointReplica.hxx>
#include<StepGeom_Polyline.hxx>
#include<StepGeom_PreferredSurfaceCurveRepresentation.hxx>
#include<StepGeom_QuasiUniformCurve.hxx>
#include<StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx>
#include<StepGeom_QuasiUniformSurface.hxx>
#include<StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx>
#include<StepGeom_RationalBSplineCurve.hxx>
#include<StepGeom_RationalBSplineSurface.hxx>
#include<StepGeom_RectangularCompositeSurface.hxx>
#include<StepGeom_RectangularTrimmedSurface.hxx>
#include<StepGeom_ReparametrisedCompositeCurveSegment.hxx>
#include<StepGeom_SeamCurve.hxx>
#include<StepGeom_SphericalSurface.hxx>
#include<StepGeom_Surface.hxx>
#include<StepGeom_SurfaceBoundary.hxx>
#include<StepGeom_SurfaceCurve.hxx>
#include<StepGeom_SurfaceCurveAndBoundedCurve.hxx>
#include<StepGeom_SurfaceOfLinearExtrusion.hxx>
#include<StepGeom_SurfaceOfRevolution.hxx>
#include<StepGeom_SurfacePatch.hxx>
#include<StepGeom_SurfaceReplica.hxx>
#include<StepGeom_SweptSurface.hxx>
#include<StepGeom_ToroidalSurface.hxx>
#include<StepGeom_TransitionCode.hxx>
#include<StepGeom_TrimmedCurve.hxx>
#include<StepGeom_TrimmingMember.hxx>
#include<StepGeom_TrimmingPreference.hxx>
#include<StepGeom_TrimmingSelect.hxx>
#include<StepGeom_UniformCurve.hxx>
#include<StepGeom_UniformCurveAndRationalBSplineCurve.hxx>
#include<StepGeom_UniformSurface.hxx>
#include<StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx>
#include<StepGeom_Vector.hxx>
#include<StepGeom_VectorOrDirection.hxx>
#include<StepRepr_Array1OfMaterialPropertyRepresentation.hxx>
#include<StepRepr_Array1OfPropertyDefinitionRepresentation.hxx>
#include<StepRepr_Array1OfRepresentationItem.hxx>
#include<StepRepr_AssemblyComponentUsage.hxx>
#include<StepRepr_AssemblyComponentUsageSubstitute.hxx>
#include<StepRepr_CharacterizedDefinition.hxx>
#include<StepRepr_CompositeShapeAspect.hxx>
#include<StepRepr_CompoundRepresentationItem.hxx>
#include<StepRepr_ConfigurationDesign.hxx>
#include<StepRepr_ConfigurationDesignItem.hxx>
#include<StepRepr_ConfigurationEffectivity.hxx>
#include<StepRepr_ConfigurationItem.hxx>
#include<StepRepr_DataEnvironment.hxx>
#include<StepRepr_DefinitionalRepresentation.hxx>
#include<StepRepr_DerivedShapeAspect.hxx>
#include<StepRepr_DescriptiveRepresentationItem.hxx>
#include<StepRepr_Extension.hxx>
#include<StepRepr_ExternallyDefinedRepresentation.hxx>
#include<StepRepr_FunctionallyDefinedTransformation.hxx>
#include<StepRepr_GlobalUncertaintyAssignedContext.hxx>
#include<StepRepr_GlobalUnitAssignedContext.hxx>
#include<StepRepr_HArray1OfMaterialPropertyRepresentation.hxx>
#include<StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx>
#include<StepRepr_HArray1OfRepresentationItem.hxx>
#include<StepRepr_HSequenceOfMaterialPropertyRepresentation.hxx>
#include<StepRepr_HSequenceOfRepresentationItem.hxx>
#include<StepRepr_ItemDefinedTransformation.hxx>
#include<StepRepr_MakeFromUsageOption.hxx>
#include<StepRepr_MappedItem.hxx>
#include<StepRepr_MaterialDesignation.hxx>
#include<StepRepr_MaterialProperty.hxx>
#include<StepRepr_MaterialPropertyRepresentation.hxx>
#include<StepRepr_MeasureRepresentationItem.hxx>
#include<StepRepr_NextAssemblyUsageOccurrence.hxx>
#include<StepRepr_ParametricRepresentationContext.hxx>
#include<StepRepr_ProductConcept.hxx>
#include<StepRepr_ProductDefinitionShape.hxx>
#include<StepRepr_ProductDefinitionUsage.hxx>
#include<StepRepr_PromissoryUsageOccurrence.hxx>
#include<StepRepr_PropertyDefinition.hxx>
#include<StepRepr_PropertyDefinitionRelationship.hxx>
#include<StepRepr_PropertyDefinitionRepresentation.hxx>
#include<StepRepr_QuantifiedAssemblyComponentUsage.hxx>
#include<StepRepr_ReprItemAndLengthMeasureWithUnit.hxx>
#include<StepRepr_Representation.hxx>
#include<StepRepr_RepresentationContext.hxx>
#include<StepRepr_RepresentationItem.hxx>
#include<StepRepr_RepresentationMap.hxx>
#include<StepRepr_RepresentationRelationship.hxx>
#include<StepRepr_RepresentationRelationshipWithTransformation.hxx>
#include<StepRepr_RepresentedDefinition.hxx>
#include<StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation.hxx>
#include<StepRepr_SequenceNodeOfSequenceOfRepresentationItem.hxx>
#include<StepRepr_SequenceOfMaterialPropertyRepresentation.hxx>
#include<StepRepr_SequenceOfRepresentationItem.hxx>
#include<StepRepr_ShapeAspect.hxx>
#include<StepRepr_ShapeAspectDerivingRelationship.hxx>
#include<StepRepr_ShapeAspectRelationship.hxx>
#include<StepRepr_ShapeAspectTransition.hxx>
#include<StepRepr_ShapeDefinition.hxx>
#include<StepRepr_ShapeRepresentationRelationship.hxx>
#include<StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx>
#include<StepRepr_SpecifiedHigherUsageOccurrence.hxx>
#include<StepRepr_StructuralResponseProperty.hxx>
#include<StepRepr_StructuralResponsePropertyDefinitionRepresentation.hxx>
#include<StepRepr_SuppliedPartRelationship.hxx>
#include<StepRepr_Transformation.hxx>
#include<StepRepr_ValueRange.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_StepBasic_Organization.hxx>
#include<Handle_StepBasic_OrganizationRole.hxx>
#include<Handle_StepRepr_AssemblyComponentUsageSubstitute.hxx>
#include<Handle_StepBasic_DocumentFile.hxx>
#include<Handle_StepRepr_MaterialDesignation.hxx>
#include<Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation.hxx>
#include<Handle_StepVisual_PresentationArea.hxx>
#include<Handle_StepBasic_Product.hxx>
#include<Handle_StepBasic_ProductDefinition.hxx>
#include<Handle_StepBasic_ProductDefinitionFormation.hxx>
#include<Handle_StepBasic_ProductDefinitionRelationship.hxx>
#include<Handle_StepRepr_PropertyDefinition.hxx>
#include<Handle_StepShape_ShapeRepresentation.hxx>
#include<Handle_StepBasic_SecurityClassification.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<StepBasic_SourceItem.hxx>
#include<Handle_StepBasic_ExternalSource.hxx>
#include<Handle_StepBasic_ExternallyDefinedItem.hxx>
#include<Handle_StepBasic_ProductDefinitionWithAssociatedDocuments.hxx>
#include<Handle_StepRepr_Representation.hxx>
#include<Handle_StepRepr_ExternallyDefinedRepresentation.hxx>
#include<Handle_StepBasic_DateAndTime.hxx>
#include<Handle_StepBasic_DateTimeRole.hxx>
#include<Handle_StepBasic_Group.hxx>
#include<Handle_StepBasic_PersonAndOrganization.hxx>
#include<Handle_StepBasic_PersonAndOrganizationRole.hxx>
#include<Handle_StepBasic_Approval.hxx>
#include<Handle_StepBasic_ApprovalPersonOrganization.hxx>
#include<Handle_StepBasic_Effectivity.hxx>
#include<Handle_StepBasic_Document.hxx>
#include<StepAP214.hxx>
#include<Handle_StepBasic_HArray1OfApproval.hxx>
#include<Handle_StepShape_AdvancedBrepShapeRepresentation.hxx>
#include<Handle_StepShape_CsgShapeRepresentation.hxx>
#include<Handle_StepShape_FacetedBrepShapeRepresentation.hxx>
#include<Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation.hxx>
#include<Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation.hxx>
#include<Handle_StepShape_ManifoldSurfaceShapeRepresentation.hxx>
#include<Handle_StepRepr_RepresentationItem.hxx>
#include<Handle_StepRepr_ShapeAspect.hxx>
#include<Handle_StepVisual_TemplateInstance.hxx>
#include<Handle_StepBasic_DocumentRelationship.hxx>
#include<Handle_StepRepr_MappedItem.hxx>
#include<Handle_StepVisual_PresentationView.hxx>
#include<Handle_StepBasic_ProductCategory.hxx>
#include<Handle_StepRepr_RepresentationRelationship.hxx>
#include<Handle_StepRepr_ProductDefinitionShape.hxx>
#include<Handle_StepGeom_GeometricRepresentationItem.hxx>
#include<Handle_StepBasic_PhysicallyModeledProductDefinition.hxx>
#include<Handle_StepRepr_DescriptiveRepresentationItem.hxx>
#include<Handle_StepRepr_ShapeAspectRelationship.hxx>
#include<Handle_StepBasic_Date.hxx>
#include<Handle_StepBasic_DateRole.hxx>
#include<Handle_StepBasic_ProductDefinitionEffectivity.hxx>
#include<Handle_StepBasic_IdentificationRole.hxx>
%}
