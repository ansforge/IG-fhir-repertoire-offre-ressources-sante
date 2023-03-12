Extension: RORPeriodClosingType
Id: ror-period-closing-type
Description: "Extension créée dans le cadre du ROR pour décrire le type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS."
* ^context.type = #element
* ^context.expression = "Period"
* value[x] only CodeableConcept
* value[x] from $JDV-J201-TypeFermeture-ROR (required)