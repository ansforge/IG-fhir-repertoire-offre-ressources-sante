Extension: RORCommuneCog
Id: ror-commune-cog
Description: "Extension créée dans le cadre du ROR pour représenter le code officiel géographique (COG) de la commune dans laquelle le lieu est situé."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J124-Commune (required)

Mapping:  ConceptMetier_RORCommuneCog
Source:   RORCommuneCog
Id:       specmetier-to-RORCommuneCog
Title:    "Spécification métier vers l'extension ROR CommuneCog"
* valueCodeableConcept -> "communeCog"