Extension: ROROrganizationPeriod
Id: ror-organization-period
Title: "Period"
Description: "Extension créée dans le cadre du ROR"
* ^meta.lastUpdated = "2023-01-18T10:51:18.056967+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "3.0"
* ^date = "2021-03-25T16:52:52.2657+00:00"
* ^publisher = "ANS"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "HL7"
* ^context.type = #element
* ^context.expression = "Organization"
* . ..1
* . ^definition = "The date range that this organization should be considered available."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    period 0..1 and
    closingType 0..1 and
    reopeningDate 0..1 and
    temporalityClosing 0..1
* extension[period].value[x] only Period
* extension[closingType].value[x] only CodeableConcept
* extension[closingType].value[x] from $_2 (required)
* extension[reopeningDate].value[x] only date
* extension[temporalityClosing].value[x] only CodeableConcept
* extension[temporalityClosing].value[x] from $_3 (required)
* url only uri
//* value[x] ^slicing.discriminator.type = #type
//* value[x] ^slicing.discriminator.path = "$this"
//* value[x] ^slicing.rules = #closed
//* valuePeriod only Period
//* valuePeriod ^sliceName = "valuePeriod"
//* valueCodeableConcept only CodeableConcept
//* valueCodeableConcept from $_2 (required)
//* valueCodeableConcept ^sliceName = "valueCodeableConcept"