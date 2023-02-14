Extension: RORLevelRecourseORSAN
Id: ror-level-recours-orsan
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* value[x] from $JDV-J204-NiveauRecoursORSAN-ROR (required)