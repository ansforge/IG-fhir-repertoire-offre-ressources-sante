Extension: RORActType
Id: ror-act-type
Description: "Extension créée dans le cadre du ROR pour discriminer le type d'acte (spécifique ou hors cabinet)"
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.characteristic"
* value[x] only code
* valueCode from act-type-ror-valueset (required)

