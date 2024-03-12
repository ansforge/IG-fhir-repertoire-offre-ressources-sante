Extension: ROROrganizationAdditionalName
Id: ror-organization-additional-name
Description: "Extension créée dans le cadre du ROR pour nom complémentaire de l'EJ (complementRaisonSociale)  ou nom complémentaire de l'EG (DenominationEG)"
* ^context[0].type = #element
* ^context[=].expression = "Organization.name"
* value[x] only string