ValueSet: RORQuestionnaireStatusVS
Id: ror-questionnaire-status-vs
Title: "Statuts autorisés pour les Questionnaires ROR"
Description: "Restriction des statuts de publication FHIR aux valeurs applicables aux modèles de saisie ROR. La valeur 'unknown' est exclue."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true
* http://hl7.org/fhir/publication-status#draft
* http://hl7.org/fhir/publication-status#active
* http://hl7.org/fhir/publication-status#retired
