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
* valueInteger -> "jourSemaine"