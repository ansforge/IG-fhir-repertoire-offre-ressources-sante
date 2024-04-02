Extension: ROROrganizationNbPermanentSocialHelpPlace
Id: ror-organization-nb-permanent-social-help-place
Description: "Extension créée dans le cadre du ROR pour indiquer le nombre de places permanentes dédiées à l'aide sociale dans l'établissement"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only integer

Mapping:  ConceptMetier_ROROrganizationNbPermanentSocialHelpPlace
Source:   ROROrganizationNbPermanentSocialHelpPlace
Id:       specmetier-to-ROROrganizationNbPermanentSocialHelpPlace
Title:    "Spécification métier vers l'extension ROR NbPermanentSocialHelpPlace"
* valueInteger -> "nbPlaceAideSocialPermanent" "Profil 1,
Profil 2,
Profil 3,
Profil 0"