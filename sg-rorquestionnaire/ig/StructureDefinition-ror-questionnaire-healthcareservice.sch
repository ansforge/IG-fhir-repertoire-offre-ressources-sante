<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile SDCQuestionnairePopulateExpression
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.copyrightLabel']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.copyrightLabel': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:subjectType) &gt;= 1">subjectType: minimum cardinality of 'subjectType' is 1</sch:assert>
      <sch:assert test="count(f:subjectType) &lt;= 1">subjectType: maximum cardinality of 'subjectType' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:useContext</sch:title>
    <sch:rule context="f:Questionnaire/f:useContext">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.item.answerConstraint']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.item.answerConstraint': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-isSubject']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-isSubject': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
