Extension: RORTelecomUsage
Id: ror-telecom-usage
Description: "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication"
* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService.extension.extension"
* value[x] only string

Mapping:  ConceptMetier_RORTelecomUsage
Source:   RORTelecomUsage
Id:       specmetier-to-RORTelecomUsage
Title:    "Spécification métier vers l'extension ROR TelecomCommunicationUsage"
* valueString -> "utilisation" "RORPractitionerRole : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui) / RORHealthcareService : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui) / RORLocation : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou AMBULATOIRE (sauf si uniteSensible = Oui),
Profil 0  si champ d'activité = AMBULATOIRE (sauf si uniteSensible = Oui)"