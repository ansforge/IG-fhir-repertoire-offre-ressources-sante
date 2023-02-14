Extension: RORHealthcareServiceSensitiveUnit
Id: ror-healthcareservice-sensitive-unit
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* . 1..1
* value[x] 1..
* value[x] only boolean