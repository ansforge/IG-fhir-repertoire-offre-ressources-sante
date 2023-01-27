Extension: ROROrganizationFinancialHelpType
Id: ror-organization-financial-help-type
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-29"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* value[x] from $JDV-J31-AideFinanciere-ROR (required)