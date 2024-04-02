Extension: RORContactConfidentialityLevel
Id: ror-contact-confidentiality-level
Description: "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact"
* ^context.type = #element
* ^context.expression = "Organization.contact"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J222-NiveauConfidentialite-ROR (required)

Mapping:  ConceptMetier_RORContactConfidentialityLevel
Source:   RORContactConfidentialityLevel
Id:       specmetier-to-RORContactConfidentialityLevel
Title:    "Spécification métier vers l'extension ROR ContactConfidentialityLevel"
* valueCodeableConcept -> "niveauConfidentialite" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"