Extension: ROROrganizationFinancialHelpType
Id: ror-organization-financial-help-type
Description: "Extension créée dans le cadre du ROR pour préciser l'aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement qui permet aux personnes accueillies d'en bénéficier si elles remplissent les conditions."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J31-AideFinanciere-ROR (required)