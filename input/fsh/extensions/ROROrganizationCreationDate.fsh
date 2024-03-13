Extension: ROROrganizationCreationDate
Id: ror-organization-creation-date
Description: "Extension créée dans le cadre du ROR pour définir la date de création de l'entité juridique."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only date

Mapping:  ConceptMetier_ROROrganizationCreationDate
Source:   ROROrganizationCreationDate
Id:       specmetier-to-ROROrganizationCreationDate
Title:    "Spécification métier vers l'extension ROR OrganizationCreationDate"
* valueDate -> "dateCreation"