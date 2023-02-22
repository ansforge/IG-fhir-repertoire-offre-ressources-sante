Profile: RORPractitioner
Parent: Practitioner
Id: ror-practitioner
Description: "Profil créée dans le cadre du ROR pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel"
/* Données techniques */
* id 1..1
* meta.tag 0..1
* meta.tag from $JDV_J237-RegionOM-ROR (required)
/* Données fonctionnelles */
* identifier 1..1
// BoiteLettreMSS
* telecom 0..1
* telecom.value 1..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1
* telecom.extension[ror-telecom-usage] ^isModifier = false
* telecom.extension[ror-telecom-confidentiality-level] ^isModifier = false
* telecom.extension[ror-telecom-communication-channel] ^isModifier = false