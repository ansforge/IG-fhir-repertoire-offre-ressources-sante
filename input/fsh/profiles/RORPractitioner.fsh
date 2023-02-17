Profile: RORPractitioner
Parent: Practitioner
Id: ror-practitioner
Description: "Profil créée dans le cadre du ROR pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel"
* id 1..1
* meta.tag 0..1
* meta.tag from $JDV_J237-RegionOM-ROR (required)
* identifier 1..1
* telecom 0..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomUsage named usage 0..1 and
    RORConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    RORCommunicationChannel named ror-communication-channel 1..1
* telecom.extension[usage] ^isModifier = false
* telecom.value 1..1