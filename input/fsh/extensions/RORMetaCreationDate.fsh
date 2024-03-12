Extension: RORMetaCreationDate
Id: ror-meta-creation-date
Description: "Extension créée dans le cadre du ROR qui correspond à la date de création (dans le ROR régional) présente dans les métadonnées."
* ^context[0].type = #element
* ^context[=].expression = "Location"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService"
* value[x] only dateTime

Mapping:  ConceptMetier_RORMetaCreationDate
Source:   RORMetaCreationDate
Id:       specmetier-to-RORMetaCreationDate
Title:    "Spécification métier vers l'extension ROR MetaCreationDate"
* valueDateTime -> "metadonnee.dateCreation"

