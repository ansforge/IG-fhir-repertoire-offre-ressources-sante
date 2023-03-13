Extension: RORPractitionerTitle
Id: RORPractitionerTitle
Description: "Extension créée dans le cadre du ROR pour définir la civilité de la personne physique"
* ^context.type = #element
* ^context.expression = "Practitioner"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    title 0..1
* extension[title].valueCodeableConcept from $JDV-J208-CiviliteExcercice-ROR (required)
