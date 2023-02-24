Extension: RORConfidentialityLevel
Id: ror-confidentiality-level
Description: "Extension créée dans le cadre du ROR"
* ^version = "3"
* ^date = "2022-06-28T00:00:00+02:00"
* ^publisher = "ANS"
* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "BackboneElement"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.telecom"
* ^context[+].type = #element
* ^context[=].expression = "Location.telecom"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.telecom"
* . ..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)