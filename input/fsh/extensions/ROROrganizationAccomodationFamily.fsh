Extension: ROROrganizationAccomodationFamily
Id: ror-organization-accomodation-family
Description: "Extension créée dans le cadre du ROR pour préciser si l'établissement peut héberger les familles des personnes prises en charge."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only boolean

Mapping:  ConceptMetier_ROROrganizationAccomodationFamily
Source:   ROROrganizationAccomodationFamily
Id:       specmetier-to-ROROrganizationAccomodationFamily
Title:    "Spécification métier vers l'extension ROR AccomodationFamily"
* valueBoolean -> "hebergementFamille"