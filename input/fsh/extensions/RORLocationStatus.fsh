Extension: RORLocationStatus
Id: ror-location-status
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only CodeableConcept
* value[x] from $JDV-J224-StatutLieu-ROR (required)