Extension: RORContactDescription
Id: ror-contact-description
Description: "Extension créée dans le cadre du ROR qui indique la description du Contact."
* ^context.type = #element
* ^context.expression = "Organization.contact"
* value[x] only string

Mapping:  ConceptMetier_RORContactDescription
Source:   RORContactDescription
Id:       specmetier-to-RORContactDescription
Title:    "Spécification métier vers l'extension RORContactDescription"
* valueString -> "description" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"