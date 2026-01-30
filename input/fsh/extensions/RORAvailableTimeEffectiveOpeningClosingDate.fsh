Extension: RORAvailableTimeEffectiveOpeningClosingDate
Id: ror-available-time-effective-opening-closing-date
Description: "Extension créée dans le cadre du ROR pour décrire le planning d'activité d'un professionnel ou d'une offre."
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* value[x] only Period

Mapping:  ConceptMetier_RORAvailableTimeEffectiveOpeningClosingDate
Source:   RORAvailableTimeEffectiveOpeningClosingDate
Id:       specmetier-to-RORAvailableTimeEffectiveOpeningClosingDate
Title:    "Spécification métier vers l'extension ROR AvailableTimeEffectiveOpeningClosingDate"
* valuePeriod.start -> "heureDebut" 
* valuePeriod.end -> "heureFin" 