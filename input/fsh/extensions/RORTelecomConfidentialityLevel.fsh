Extension: RORTelecomConfidentialityLevel
Id: ror-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Télécommunication."
* ^context.type = #element
* ^context.expression = "ContactPoint"
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)