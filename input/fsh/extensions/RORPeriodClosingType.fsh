Extension: RORPeriodClosingType
Id: ror-period-closing-type
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Period"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-201-TypeFermeture-ROR (required)