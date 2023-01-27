Extension: ROREquipementLimit
Id: ror-equipement-limit
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    equipementFeature 1..1 and
    limitValue 1..1
* extension[equipementFeature].value[x] only CodeableConcept
* extension[equipementFeature].value[x] from $JDV-J228-TypeCaracteristiqueEquipement-ROR (required)
* extension[limitValue].value[x] only Quantity