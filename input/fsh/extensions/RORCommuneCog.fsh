Extension: RORCommuneCog
Id: ror-commune-cog
Description: "Extension créée dans le cadre du ROR pour représenter le code officiel géographique (COG) de la commune dans laquelle le lieu est situé."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only CodeableConcept
* valueCodeableConcept from fr-insee-code (required)