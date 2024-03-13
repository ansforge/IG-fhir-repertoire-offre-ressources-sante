Extension: RORContactFunctionContact
Id: ror-contact-function-contact
Description: "Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation (directeur, secrétaire, etc.)."
* ^context[0].type = #element
* ^context[=].expression = "Organization.contact"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService.extension"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J220-FonctionContact-ROR (required)

Mapping:  ConceptMetier_RORContactFunctionContact
Source:   RORContactFunctionContact
Id:       specmetier-to-RORContactFunctionContact
Title:    "Spécification métier vers l'extension ROR ContactFunctionContact"
* valueCodeableConcept -> "fonctionContact"