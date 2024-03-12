Extension: RORLocationStatus
Id: ror-location-status
Description: "Extension créée dans le cadre du ROR pour indiquer si le lieu est opérationnel, fermé temporairement ou fermé définitivement."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J224-StatutLieu-ROR (required)

Mapping:  ConceptMetier_RORLocationStatus
Source:   RORLocationStatus
Id:       specmetier-to-RORLocationStatus
Title:    "Spécification métier vers l'extension ROR LocationStatus"
* valueCodeableConcept -> "statut"