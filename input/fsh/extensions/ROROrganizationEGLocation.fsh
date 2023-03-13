Extension: ROROrganizationEGLocation
Id: ror-organization-eg-location
Description: "Extension créée dans le cadre du ROR décrire le lieu de l'entité géographique (EG)."
* ^context.type = #element
* ^context.expression = "Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    identifier 0..1 and
    name 0..1 and
    description 0..1 and
    function 0..1 and
    status 0..1 and
    RORCommuneCog 1..1 and
    careOf 0..1 and
    additionalLocator 0..1 and
    houseNumber 0..1 and
    buildingNumberSuffix 0..1 and
    streetNameType 0..1 and
    streetNameBase 0..1 and
    streetNameHamlet 0..1 and
    postBox 0..1 and
    RORGeolocation 0..1 and
    latitude 1..1 and
    longitude 1..1 and
    RORTelecomConfidentialityLevel 1..1 and
    RORTelecomUsage 0..1 and
    RORTelecomCommunicationChannel 1..1 and
    telecomAddress 1..1 
* extension[identifier].value[x] only Identifier
* extension[name].value[x] only string
* extension[description].value[x] only string
* extension[function].value[x] only CodeableConcept
* extension[function].valueCodeableConcept from $JDV-J198-FonctionLieu-ROR (required)
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $JDV-J224-StatutLieu-ROR (required)
* extension[careOf].value[x] only string
* extension[additionalLocator].value[x] only string
* extension[houseNumber].value[x] only string
* extension[buildingNumberSuffix].value[x] only string
* extension[streetNameType].value[x] only CodeableConcept
* extension[streetNameType].valueCodeableConcept from $JDV-J219-TypeVoie-ROR (required)
* extension[streetNameBase].value[x] only string
* extension[streetNameHamlet].value[x] only string
* extension[postBox].value[x] only CodeableConcept
* extension[latitude].value[x] only decimal
* extension[longitude].value[x] only decimal 
* extension[telecomAddress].value[x] only string