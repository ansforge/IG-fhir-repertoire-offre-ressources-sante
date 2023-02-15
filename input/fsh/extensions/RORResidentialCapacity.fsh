Extension: RORResidentialCapacity
Id: ror-residential-capacity
Description: "Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre."
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    residentialType 1..1 and
    residentialNumber 0..1
* extension[residentialType].value[x] only CodeableConcept
* extension[residentialType].value[x] from $JDV-J32-TypeHabitation-ROR (required)
* extension[residentialNumber].value[x] only integer