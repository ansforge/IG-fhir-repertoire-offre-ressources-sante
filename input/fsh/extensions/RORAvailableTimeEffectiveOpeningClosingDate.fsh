Extension: RORAvailableTimeEffectiveOpeningClosingDate
Id: ror-available-time-effective-opening-closing-date
Description: "Extension créée dans le cadre du ROR"
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* url = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuide/ROR/StructureDefinition/ror-available-time-effective-opening-closing-date" (exactly)
* value[x] 1..
* value[x] only Period