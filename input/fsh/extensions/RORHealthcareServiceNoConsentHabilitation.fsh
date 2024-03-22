Extension: RORHealthcareServiceNoConsentHabilitation
Id: ror-healthcareservice-no-consent-habilitation
Description: "Extension créée dans le cadre du ROR qui permet d'identifier les offres pour lesquelles un établissement est autorisé par le directeur général de l’ARS après avis du préfet, à prendre en charge des patients sans leur consentement."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only boolean

Mapping:  ConceptMetier_RORHealthcareServiceNoConsentHabilitation
Source:   RORHealthcareServiceNoConsentHabilitation
Id:       specmetier-to-RORHealthcareServiceNoConsentHabilitation
Title:    "Spécification métier vers l'extension ROR HealthcareServiceNoConsentHabilitation"
* valueBoolean -> "habilitationAuxSoinsSansConsentement" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"