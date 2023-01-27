Extension: RORTelecomConfidentialityLevel
Id: ror-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-28T00:00:00+02:00"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Practitioner.telecom"
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)