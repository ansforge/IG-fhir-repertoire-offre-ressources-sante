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
* valueString -> "utilisation"