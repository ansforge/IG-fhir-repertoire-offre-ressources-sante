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
* valueString -> "description"