Extension: RORTelecomConfidentialityLevel
Id: ror-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Télécommunication."
* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService.extension.extension"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J222-NiveauConfidentialite-ROR (required)

Mapping:  ConceptMetier_RORTelecomConfidentialityLevel
Source:   RORTelecomConfidentialityLevel
Id:       specmetier-to-RORTelecomConfidentialityLevel
Title:    "Spécification métier vers l'extension ROR TelecomConfidentialityLevel"
* valueCodeableConcept -> "niveauConfidentialite"