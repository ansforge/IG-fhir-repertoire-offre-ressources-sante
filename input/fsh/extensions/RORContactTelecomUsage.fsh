Extension: RORContactTelecomUsage
Id: ror-contact-telecom-usage
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Organization.contact.telecom"
* value[x] only string

Mapping:  ConceptMetier_RORContactTelecomUsage
Source:   RORContactTelecomUsage
Id:       specmetier-to-RORContactTelecomUsage
Title:    "Spécification métier vers l'extension ROR ContactTelecomUsaget"
* valueString -> "utilisation" "Profil 1,
Profil 2 si niveau de confidentialité du telecom = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité du telecom = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité du telecom = public ou restreint
Profil 0 si niveau de confidentialité du telecom = public"