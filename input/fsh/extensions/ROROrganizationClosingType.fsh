Extension: ROROrganizationClosingType
Id: ror-organization-closing-type
Description: "Extension créée dans le cadre du ROR pour définir le type de fermeture de l'organisation."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J201-TypeFermeture-ROR (required)

