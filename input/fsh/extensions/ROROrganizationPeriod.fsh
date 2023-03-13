Extension: ROROrganizationPeriod
Id: ror-organization-period
Description: "Extension créée dans le cadre du ROR pour définir la date de création et les périodes d'ouverture et de fermeture de l'organisation."
* ^context.type = #element
* ^context.expression = "Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    closingType 0..1 and
    reopeningDate 0..1 and
    creationDate 0..1
* extension[closingType].value[x] only CodeableConcept
* extension[closingType].valueCodeableConcept from $JDV-J201-TypeFermeture-ROR (required)
* extension[reopeningDate].value[x] only date
* extension[creationDate].value[x] only date
