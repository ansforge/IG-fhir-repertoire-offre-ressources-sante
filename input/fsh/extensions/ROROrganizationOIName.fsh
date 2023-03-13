Extension: ROROrganizationOIName
Id: ror-organization-oi-name
Description: "Extension créée dans le cadre du ROR pour décrire le nom de l'organisation interne (OI)."
* ^context[0].type = #element
* ^context[=].expression = "Organization"
* value[x] only string