Extension: RORLocationEquipment
Id: ror-location-equipment
Description: "Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d'une prestation."
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    equipmentType 1..1 and
    nbInService 0..1
* extension[equipmentType].value[x] only CodeableConcept
* extension[equipmentType].value[x] from $JDV-J18-EquipementSpecifique-ROR (required)
* extension[nbInService].value[x] only integer