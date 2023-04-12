Extension: RORHealthcareServiceContact
Id: ror-healthcareservice-contact
Description: "Extension créée dans le cadre du ROR pour décrire la personne ou le service qui agit comme point de contact de l'offre."
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
    RORConfidentialityLevel named ror-confidentiality-level 1..1 and
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    telecomAddress 1..1
* extension[name].value[x] only string
* extension[description].value[x] only string
* extension[telecomAddress].value[x] only string
* extension[purposeContact].value[x] only CodeableConcept
* extension[purposeContact].valueCodeableConcept from $JDV-J221-NatureContact-ROR (required)

