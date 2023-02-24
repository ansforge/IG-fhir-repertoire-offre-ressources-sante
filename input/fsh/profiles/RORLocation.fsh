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
    RORCommuneCog named ror-commune-cog 1..1
* extension[ror-location-status] ^isModifier = false
* extension[ror-location-equipment] ^isModifier = false
* extension[ror-location-residential-capacity] ^isModifier = false
* extension[ror-location-supported-capacity] ^isModifier = false
* extension[ror-location-equipment-limit] ^isModifier = false
* extension[ror-commune-cog] ^isModifier = false
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
//
* type 0..1
* type from $JDV-J198-FonctionLieu-ROR (required)
// Telecommunication
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
// Adresse 
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension contains
    ROROrganizationAddressLineISO21090AdxpLocality named ror-organization-address-line-iso-21090-adxp-locality 0..1 and
    $careOf named careOf 0..1 and
    $additionalLocator named additionalLocator 0..1 and
    $houseNumber named houseNumber 0..1 and
    $buildingNumberSuffix named buildingNumberSuffix 0..1 and
    $streetNameType named streetNameType 0..1 and
    $streetNameBase named streetNameBase 0..1 and
    $postBox named postalBox 0..1
* address.line.extension[streetNameType].value[x] from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[streetNameType] ^isModifier = false
* address.line.extension[careOf] ^isModifier = false
* address.line.extension[ror-organization-address-line-iso-21090-adxp-locality] ^isModifier = false
* address.line.extension[additionalLocator] ^isModifier = false
* address.line.extension[houseNumber] ^isModifier = false
* address.line.extension[buildingNumberSuffix] ^isModifier = false
* address.line.extension[streetNameBase] ^isModifier = false


/* * address.line.extension[streetNameType].valueString ^sliceName = "valueString"
* address.line.extension[streetNameType].valueString ^binding.description = "JDV_J219-TypeVoie-ROR"*/
// CoordonneeGeographique
* position 0..1
* position.extension ^slicing.discriminator.type = #value
* position.extension ^slicing.discriminator.path = "url"
* position.extension ^slicing.rules = #open
* position.extension contains RORGeolocationLocation named ror-location-geolocation 0..1
* position.extension[ror-location-geolocation] ^isModifier = false
