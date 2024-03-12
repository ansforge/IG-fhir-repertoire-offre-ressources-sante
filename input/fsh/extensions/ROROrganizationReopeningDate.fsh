Extension: ROROrganizationReopeningDate
Id: ror-organization-reopening-date
Description: "Extension créée dans le cadre du ROR pour définir la date prévisionnelle de réouverture de l'organisation interne."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only date

Mapping:  ConceptMetier_ROROrganizationReopeningDate
Source:   ROROrganizationReopeningDate
Id:       specmetier-to-ROROrganizationReopeningDate
Title:    "Spécification métier vers l'extension ROR ReopeningDate"
* valueDate -> "datePrevisionnelleReouverture"