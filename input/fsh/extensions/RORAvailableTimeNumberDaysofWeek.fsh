Extension: RORAvailableTimeNumberDaysofWeek
Id: ror-available-time-number-days-of-week
Description: "Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine."
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #extension
* ^context[=].expression = "PractitionerRole.availableTime"
* value[x] only integer

Mapping:  ConceptMetier_RORAvailableTimeNumberDaysofWeek
Source:   RORAvailableTimeNumberDaysofWeek
Id:       specmetier-to-RORAvailableTimeNumberDaysofWeek
Title:    "Spécification métier vers l'extension ROR AvailableTimeNumberDaysofWeek"
* valueInteger -> "jourSemaine" "RORPractitionerRole : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui) / RORHealthcareService : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"