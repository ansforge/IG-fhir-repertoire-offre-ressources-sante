Extension: RORMetaComment
Id: ror-meta-comment
Description: "Extension créée dans le cadre du ROR qui correspond au commentaire présent dans les métadonnées."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only string

Mapping:  ConceptMetier_RORMetaComment
Source:   RORMetaComment
Id:       specmetier-to-RORMetaComment
Title:    "Spécification métier vers l'extension ROR MetaComment"
* valueString -> "metadonnee.commentaire"