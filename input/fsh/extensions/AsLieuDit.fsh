Extension: AsLieuDit
Id: as-ext-lieu-dit
Description: "Extension créée dans le cadre du ROR pour indiquer le lieu dit"
* ^url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit"
* ^context[0].type = #element
* ^context[=].expression = "Address.line"
* value[x] only string

Mapping:  ConceptMetier_AsLieuDit
Source:   AsLieuDit
Id:       specmetier-to-AsLieuDit
Title:    "Spécification métier vers l'extension AsLieuDit"
* valueString -> "lieuDit"

