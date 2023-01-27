Profile: RORLocation
Parent: Location
Id: ror-location
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^status = #active
* ^publisher = "ANS"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORLocationStatus named ror-location-status 0..1 and
    RORLocationEquipement named ror-location-equipement 0..1 and
    RORResidentialCapacity named ror-residential-capacity 0..* and
    RORSupportedCapacity named ror-supported-capacity 1..1 and
    ROREquipementLimit named ror-equipement-limit 1..1
* extension[ror-location-status] ^isModifier = false
* extension[ror-location-equipement] ^isModifier = false
* extension[ror-residential-capacity] ^min = 0
* extension[ror-residential-capacity] ^isModifier = false
* extension[ror-supported-capacity] ^isModifier = false
* extension[ror-equipement-limit] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    idExterneSynchro 0..1 and
    identifiant 0..1
* identifier[idExterneSynchro].type 1..
* identifier[idExterneSynchro].type = $JDV-J236-TypeIdentifiant-ROR#26 (exactly)
* identifier[idExterneSynchro].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[identifiant].type 1..
* identifier[identifiant].type = $JDV-J236-TypeIdentifiant-ROR#25 (exactly)
* identifier[identifiant].type from $JDV-J236-TypeIdentifiant-ROR (required)
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains
    RORConfidentialityLevel named ror-confidentiality-level 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1
//* telecom.extension[ror-confidentiality-level] only RORConfidentialityLevel
//* telecom.extension[ror-confidentiality-level] ^sliceName = "ror-confidentiality-level"
* telecom.extension[ror-confidentiality-level] ^isModifier = false
//* telecom.extension contains RORTelecomUsage named ror-telecom-usage 0..1
* telecom.extension[ror-telecom-usage] ^isModifier = false
* telecom.system 1..
* telecom.value 1..
* address only $fr-address-extended
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension ^min = 0
* address.extension[inseeCode] ^sliceName = "inseeCode"
* address.extension[inseeCode] ^min = 0
* address.extension[inseeCode].value[x] from $JDV-J230-CommuneOM-ROR (required)
* address.extension[inseeCode].value[x] ^binding.description = "JDV_J230-CommuneOM-ROR"
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension ^min = 0
* address.line.extension[streetNameType] ^sliceName = "streetNameType"
* address.line.extension[streetNameType] ^min = 0
* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[streetNameType].valueString ^sliceName = "valueString"
* address.line.extension[streetNameType].valueString ^binding.description = "JDV_J219-TypeVoie-ROR"
* position.extension ^slicing.discriminator.type = #value
* position.extension ^slicing.discriminator.path = "url"
* position.extension ^slicing.rules = #open
* position.extension contains RORGeolocationLocation named ror-location-geolocation 1..*
* position.extension[ror-location-geolocation] ^isModifier = false