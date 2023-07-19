Extension: ROROrganizationAdditionalName
Id: ror-organization-additional-name
Description: "Extension créée dans le cadre du ROR pour décrire le complément de la raison sociale"
* ^context[0].type = #element
* ^context[=].expression = "Organization.name"
* value[x] only string