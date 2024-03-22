Extension: RORAvailableTimeTypeOfTime
Id: ror-available-time-type-of-time
Description: "Extension créée dans le cadre du ROR pour apporter un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent."
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* value[x] only CodeableConcept 
* valueCodeableConcept from $JDV-J41-TypeHoraire-ROR (required)

Mapping:  ConceptMetier_RORAvailableTimeTypeOfTime
Source:   RORAvailableTimeTypeOfTime
Id:       specmetier-to-RORAvailableTimeTypeOfTime
Title:    "Spécification métier vers l'extension ROR AvailableTimeTypeOfTime"
* valueCodeableConcept -> "typePlageHoraire" "RORPractitionerRole : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui) / RORHealthcareService : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
