Extension: RORPeriodClosingType
Id: ror-period-closing-type
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Period"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $_2 (required)