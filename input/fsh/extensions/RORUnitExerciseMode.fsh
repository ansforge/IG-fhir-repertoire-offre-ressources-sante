Extension: RORUnitExerciseMode
Id: ror-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-28"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-J217-ModeExercice-ROR (required)