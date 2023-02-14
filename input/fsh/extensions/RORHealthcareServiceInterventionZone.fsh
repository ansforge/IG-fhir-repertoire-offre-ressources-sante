Extension: RORHealthcareServiceInterventionZone
Id: ror-healthcareservice-intervention-zone
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    type 1..1 and
    code 1..1
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] from $JDV-J223-TypeDivisionTerritoriale-ROR (required)
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept