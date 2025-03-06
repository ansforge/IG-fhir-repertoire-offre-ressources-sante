<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile FrOrganization
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Organization</sch:title>
    <sch:rule context="f:Organization">
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationShortName']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationShortName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationDescription']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationDescription': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/organization-period']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/organization-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accomodation-family']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accomodation-family': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-permanent-social-help-place']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-permanent-social-help-place': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-temporary-social-help-place']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-temporary-social-help-place': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accessibility-location']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accessibility-location': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-level-recours-orsan']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-level-recours-orsan': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-drop-zone']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-drop-zone': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-reopening-date']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-reopening-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-creation-date']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-creation-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-closing-type']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-closing-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/organization-period']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/organization-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-comment']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-comment': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-comment']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-comment': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:alias) &lt;= 1">alias: maximum cardinality of 'alias' is 1</sch:assert>
      <sch:assert test="count(f:address) &lt;= 1">address: maximum cardinality of 'address' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:meta</sch:title>
    <sch:rule context="f:Organization/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &gt;= 1">lastUpdated: minimum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:name</sch:title>
    <sch:rule context="f:Organization/f:name">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-additional-name']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-additional-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:telecom</sch:title>
    <sch:rule context="f:Organization/f:telecom">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrContactPointEmailType']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrContactPointEmailType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:address</sch:title>
    <sch:rule context="f:Organization/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrAddressInseeCode']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrAddressInseeCode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/geolocation']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/geolocation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:address/f:extension</sch:title>
    <sch:rule context="f:Organization/f:address/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'latitude']) &gt;= 1">extension with URL = 'latitude': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'latitude']) &lt;= 1">extension with URL = 'latitude': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'longitude']) &gt;= 1">extension with URL = 'longitude': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'longitude']) &lt;= 1">extension with URL = 'longitude': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidence-geolocation']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidence-geolocation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:address/f:extension/f:extension</sch:title>
    <sch:rule context="f:Organization/f:address/f:extension/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:address/f:line</sch:title>
    <sch:rule context="f:Organization/f:address/f:line">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-careOf']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-careOf': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:address/f:line/f:extension</sch:title>
    <sch:rule context="f:Organization/f:address/f:line/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:contact</sch:title>
    <sch:rule context="f:Organization/f:contact">
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-description']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:contact/f:telecom</sch:title>
    <sch:rule context="f:Organization/f:contact/f:telecom">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrContactPointEmailType']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrContactPointEmailType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
