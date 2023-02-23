Profile: RORLocation
Parent: Location
Id: ror-location
Description: "Profil créé dans le cadre du ROR pour décrire les moyens qui peuvent être mis en œuvre pour réaliser la prestation"
/* Données techniques */
* id 1..1
* meta.tag 0..1
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "url"
* meta.tag ^slicing.rules = #open
* meta.tag ^slicing.description = "Slicing pour gérer le code région définissant la région source des données"
* meta.tag ^slicing.ordered = false
* meta.tag contains
    codeRegion 0..1
* meta.tag[codeRegion] from $JDV_J237-RegionOM-ROR (required)
/* Références*/

/* Données fonctionnelles */
* type 0..1
* type from $JDV-J198-FonctionLieu-ROR (required)
// Slice identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    idExterneSynchro 0..1 and
    idLocation 0..1
* identifier[idExterneSynchro].type 1..1
* identifier[idExterneSynchro].type = $JDV-J236-TypeIdentifiant-ROR#26 (exactly)
* identifier[idExterneSynchro].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[idLocation].type 1..1
* identifier[idLocation].type = $JDV-J236-TypeIdentifiant-ROR#25 (exactly)
* identifier[idLocation].type from $JDV-J236-TypeIdentifiant-ROR (required)
// Telecomunnication
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
// CoordonneeGeographique
* position 0..1
* position.extension ^slicing.discriminator.type = #value
* position.extension ^slicing.discriminator.path = "url"
* position.extension ^slicing.rules = #open
* position.extension contains RORGeolocationLocation named ror-location-geolocation 1..*
* position.extension[ror-location-geolocation] ^isModifier = false
// Adresse //TODO
* address only $fr-address-extended
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension[inseeCode] ^sliceName = "inseeCode"
* address.extension[inseeCode].value[x] from $JDV-J230-CommuneOM-ROR (required)
* address.extension[inseeCode].value[x] ^binding.description = "JDV_J230-CommuneOM-ROR"
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension[streetNameType] ^sliceName = "streetNameType"
* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[streetNameType].valueString ^sliceName = "valueString"
* address.line.extension[streetNameType].valueString ^binding.description = "JDV_J219-TypeVoie-ROR"
// Extension
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORLocationStatus named ror-location-status 0..1 and
    RORLocationEquipment named ror-location-equipment 0..* and
    RORLocationResidentialCapacity named ror-location-residential-capacity 0..* and
    RORLocationSupportedCapacity named ror-location-supported-capacity 0..* and
    RORLocationEquipmentLimit named ror-location-equipment-limit 0..* and
    RORLocationCommuneCog named ror-location-commune-cog 1..1
* extension[ror-location-status] ^isModifier = false
* extension[ror-location-equipment] ^isModifier = false
* extension[ror-location-residential-capacity] ^isModifier = false
* extension[ror-location-supported-capacity] ^isModifier = false
* extension[ror-location-equipment-limit] ^isModifier = false
* extension[ror-location-commune-cog] ^isModifier = false
