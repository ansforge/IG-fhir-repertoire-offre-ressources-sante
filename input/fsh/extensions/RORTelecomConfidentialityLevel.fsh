Extension: RORTelecomConfidentialityLevel
Id: ror-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Télécommunication."
* ^context[0].type = #element
* ^context[+].expression = "ContactPoint"
* ^context[=].type = #extension
* ^context[+].expression = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J222-NiveauConfidentialite-ROR (required)