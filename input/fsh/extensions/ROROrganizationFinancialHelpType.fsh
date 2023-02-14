Extension: ROROrganizationFinancialHelpType
Id: ror-organization-financial-help-type
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* value[x] from $JDV-J31-AideFinanciere-ROR (required)