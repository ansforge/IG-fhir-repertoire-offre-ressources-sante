Extension: ROROrganizationNbTemporarySocialHelpPlace
Id: ror-organization-nb-temporary-social-help-place
Description: "Extension créée dans le cadre du ROR pour indiquer le nombre de places temporaires dédiées à l'aide sociale dans l'établissement"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only integer

Mapping:  ConceptMetier_ROROrganizationNbTemporarySocialHelpPlace
Source:   ROROrganizationNbTemporarySocialHelpPlace
Id:       specmetier-to-ROROrganizationNbTemporarySocialHelpPlace
Title:    "Spécification métier vers l'extension ROR NbTemporarySocialHelpPlace"
* valueInteger -> "nbPlaceAideSocialTemporaire"