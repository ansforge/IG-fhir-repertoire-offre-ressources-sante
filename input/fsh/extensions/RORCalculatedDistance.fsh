Extension: RORCalculatedDistance
Id: ror-calculated-distance
Description: "Extension créée dans le cadre du ROR pour transporter la distance calculée"
* ^context[0].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService"
* value[x] only Quantity