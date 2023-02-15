Extension: ROROrganizationPeriod
Id: ror-organization-period
Title: "Period"
Description: "Extension créée dans le cadre du ROR pour définir les période d'ouverture et de fermeture de l'organisation interne"
* ^meta.lastUpdated = "2023-01-18T10:51:18.056967+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^contact.telecom.system = #url
* ^contact.telecom.value = "HL7"
* ^context.type = #element
* ^context.expression = "Organization"
* . ^definition = "The date range that this organization should be considered available."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    period 0..1 and
    closingType 0..1 and
    reopeningDate 0..1 and
    temporalityClosing 0..1
* extension[period].value[x] only Period
* extension[closingType].value[x] only CodeableConcept
* extension[closingType].value[x] from $JDV-J201-TypeFermeture-ROR (required)
* extension[reopeningDate].value[x] only date
* extension[temporalityClosing].value[x] only CodeableConcept
* extension[temporalityClosing].value[x] from $JDV_J185-typeFermeture-ROR (required)
* url only uri
