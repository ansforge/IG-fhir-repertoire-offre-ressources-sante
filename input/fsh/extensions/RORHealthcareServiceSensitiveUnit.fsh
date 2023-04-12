Extension: RORHealthcareServiceSensitiveUnit
Id: ror-healthcareservice-sensitive-unit
Description: "Extension créée dans le cadre du ROR pour signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only boolean