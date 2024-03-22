Extension: ROROrganizationLevelRecourseORSAN
Id: ror-organization-level-recours-orsan
Description: "Extension créée dans le cadre du ROR pour décrire une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J204-NiveauRecoursORSAN-ROR (required)

Mapping:  ConceptMetier_ROROrganizationLevelRecourseORSAN
Source:   ROROrganizationLevelRecourseORSAN
Id:       specmetier-to-ROROrganizationLevelRecourseORSAN
Title:    "Spécification métier vers l'extension ROR LevelRecourseORSAN"
* valueCodeableConcept -> "niveauRecoursORSAN" "Profil 1"