Extension: RORPractitionerRoleUnitExerciseMode
Id: ror-practitionerrole-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J217-ModeExercice-ROR (required)

Mapping:  ConceptMetier_RORPractitionerRoleUnitExerciseMode
Source:   RORPractitionerRoleUnitExerciseMode
Id:       specmetier-to-RORPractitionerRoleUnitExerciseMode
Title:    "Spécification métier vers l'extension ROR RORPractitionerRoleUnitExerciseMode"
* valueCodeableConcept -> "modeExerciceOffre" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"