Extension: RORLocationComment
Id: ror-location-comment
Description: "Extension créée dans le cadre du ROR pour décrire le commentaire qui permet à la structure de donner des informations complémentaires"
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only string

Mapping:  ConceptMetier_RORLocationComment
Source:   RORLocationComment
Id:       specmetier-to-RORLocationComment
Title:    "Spécification métier vers l'extension ROR Comment"
* valueString -> "commentaire"
