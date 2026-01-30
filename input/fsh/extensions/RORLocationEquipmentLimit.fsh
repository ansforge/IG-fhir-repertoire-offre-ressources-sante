Extension: RORLocationEquipmentLimit
Id: ror-location-equipment-limit
Description: "Extension créée dans le cadre du ROR qui précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation."
* ^context.type = #extension
* ^context.expression = "Location.extension"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    equipmentFeature 1..1 and
    limitValue 1..1
* extension[equipmentFeature].value[x] only CodeableConcept
* extension[equipmentFeature].valueCodeableConcept from $JDV-J228-TypeCaracteristiqueEquipement-ROR (required)
* extension[limitValue].value[x] only Quantity


Mapping:  ConceptMetier_RORLocationEquipmentLimit
Source:   RORLocationEquipmentLimit
Id:       specmetier-to-RORLocationEquipmentLimit
Title:    "Spécification métier vers l'extension ROR LocationEquipmentLimit"
* -> "LimiteCaracteristiqueEquipement"
* extension[equipmentFeature].valueCodeableConcept -> "typeCaracteristique"
* extension[limitValue].valueQuantity -> "valeurLimite"