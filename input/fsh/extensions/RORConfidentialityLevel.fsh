Extension: RORConfidentialityLevel
Id: ror-confidentiality-level
Description: "Extension créée dans le cadre du ROR pour définir le niveau de restriction de l'accès aux attributs de la classe Contact."
* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "BackboneElement"
* ^context[+].type = #element
* ^context[=].expression = "Location.telecom"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J222-NiveauConfidentialite-ROR (required)