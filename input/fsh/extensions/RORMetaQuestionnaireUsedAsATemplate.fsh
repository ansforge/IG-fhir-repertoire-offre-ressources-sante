Invariant: ror-questionnaire-version-required
Description: "La référence canonique du questionnaire doit inclure la version sous la forme url|version"
Severity: #error
Expression: "value.toString().contains('|')"

Extension: RORMetaQuestionnaireUsedAsATemplate
Id: ror-meta-questionnaire-used-as-a-template
Description: "Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource."
* ^context.type = #element
* ^context.expression = "DomainResource"
* value[x] only Canonical(RORQuestionnaire)
* valueCanonical obeys ror-questionnaire-version-required
* valueCanonical ^short = "Référence canonique vers le questionnaire utilisé comme modèle de saisie, incluant obligatoirement la version sous la forme url|version. Exemple : https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-2042|1"

Mapping:  ConceptMetier_RORMetaQuestionnaireUsedAsATemplate
Source:   RORMetaQuestionnaireUsedAsATemplate
Id:       specmetier-to-RORMetaQuestionnaireUsedAsATemplate
Title:    "Spécification métier vers l'extension ROR MetaQuestionnaireUsedAsATemplate"
* valueCanonical -> "metadonnee.modeleSaisie"
