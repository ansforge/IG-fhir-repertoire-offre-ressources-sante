Extension: RORUnitExerciseMode
Id: ror-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-J217-ModeExercice-ROR (required)