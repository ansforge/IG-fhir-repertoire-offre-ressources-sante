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
* valueString -> "utilisation"