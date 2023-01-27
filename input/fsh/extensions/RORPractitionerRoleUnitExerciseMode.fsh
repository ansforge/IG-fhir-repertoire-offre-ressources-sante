Extension: RORPractitionerRoleUnitExerciseMode
Id: ror-practitionerrole-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-J217-ModeExercice-ROR (required)