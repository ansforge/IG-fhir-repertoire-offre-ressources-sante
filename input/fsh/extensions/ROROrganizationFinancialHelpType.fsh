Extension: ROROrganizationFinancialHelpType
Id: ror-organization-financial-help-type
Description: "Extension créée dans le cadre du ROR pour préciser l'aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement qui permet aux personnes accueillies d'en bénéficier si elles remplissent les conditions."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J31-AideFinanciere-ROR (required)

Mapping:  ConceptMetier_ROROrganizationFinancialHelpType
Source:   ROROrganizationFinancialHelpType
Id:       specmetier-to-ROROrganizationFinancialHelpType
Title:    "Spécification métier vers l'extension ROR FinancialHelpType"
* valueCodeableConcept -> "aideFinanciere" "Profil 1,
Profil 2,
Profil 3,
Profil 0"