Extension: RORLocationEquipmentLimit
Id: ror-location-equipment-limit
Description: "Extension créée dans le cadre du ROR qui précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation."
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    equipmentFeature 1..1 and
    limitValue 1..1
* extension[equipmentFeature].value[x] only CodeableConcept
* extension[equipmentFeature].valueCodeableConcept from $JDV-J228-TypeCaracteristiqueEquipement-ROR (required)
* extension[limitValue].value[x] only Quantity