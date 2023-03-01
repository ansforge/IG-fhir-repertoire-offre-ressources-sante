Extension: ROROrganizationPeriod
Id: ror-organization-period
Description: "Extension créée dans le cadre du ROR pour définir les période d'ouverture et de fermeture de l'organisation interne"
* ^context.type = #element
* ^context.expression = "Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    closingType 0..1 and
    reopeningDate 0..1 and
    temporalityClosing 0..1
* extension[closingType].value[x] only CodeableConcept
* extension[closingType].valueCodeableConcept from $JDV-J201-TypeFermeture-ROR (required)
* extension[reopeningDate].value[x] only date
* extension[temporalityClosing].value[x] only CodeableConcept
* extension[temporalityClosing].valueCodeableConcept from $JDV-J201-TypeFermeture-ROR (required)
