Extension: RORHealthcareServiceContact
Id: ror-healthcareservice-contact
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 0..1 and
    RORContactFunctionContact named ror-function-contact 0..1 and
    purposeContact 0..1 and
    description 0..1 and
    RORConfidentialityLevel named ConfidentialityLevel 1..1 and
    telecom 0..*
* extension[name].value[x] only string
* extension[description].value[x] only string
* extension[purposeContact].value[x] only CodeableConcept
* extension[purposeContact].value[x] from $JDV-J221-NatureContact-ROR (required)
* extension[telecom].value[x] only ContactPoint //TODO
