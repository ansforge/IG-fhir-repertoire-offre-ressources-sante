Extension: RORHealthcareServiceAvailableTimeTypeOfTime
Id: ror-healthcareservice-available-time-type-of-time
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* . ..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-J41-TypeHoraire-ROR (required)
* value[x] ^binding.description = "Type of time"