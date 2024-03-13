Extension: RORContactConfidentialityLevel
Id: ror-contact-confidentiality-level
Description: "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact"
* ^context.type = #element
* ^context.expression = "Organization.contact"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J222-NiveauConfidentialite-ROR (required)

Mapping:  ConceptMetier_RORContactConfidentialityLevel
Source:   RORContactConfidentialityLevel
Id:       specmetier-to-RORContactConfidentialityLevel
Title:    "Spécification métier vers l'extension ROR ContactConfidentialityLevel"
* valueCodeableConcept -> "niveauConfidentialite"