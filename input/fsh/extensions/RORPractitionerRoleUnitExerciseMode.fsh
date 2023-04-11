Extension: RORPractitionerRoleUnitExerciseMode
Id: ror-practitionerrole-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J217-ModeExercice-ROR (required)