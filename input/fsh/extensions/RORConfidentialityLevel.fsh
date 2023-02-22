Extension: RORConfidentialityLevel
Id: ror-confidentiality-level
Description: "Extension créée dans le cadre du ROR"
* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "BackboneElement"
* ^context[+].type = #element
* ^context[=].expression = "Location.telecom"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)