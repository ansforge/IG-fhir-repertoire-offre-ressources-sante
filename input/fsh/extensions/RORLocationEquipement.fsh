Extension: RORLocationEquipement
Id: ror-location-equipement
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    equipementType 1..1 and
    nbInService 0..1
* extension[equipementType].value[x] only CodeableConcept
* extension[equipementType].value[x] from $JDV-J18-EquipementSpecifique-ROR (required)
* extension[nbInService].value[x] only integer