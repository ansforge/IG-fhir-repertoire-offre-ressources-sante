Profile: ROROrganization
Parent: $FrOrganization
Id: ror-organization
Description: "Profil créé dans le cadre du ROR pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le FINESS et les organisations internes"
/* Données techniques */
* id 1..1
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
* name 1..1
* alias 0..1
// Slice identifier 
* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    idNatStruct 1..1 and
    numFINESS 0..1 and
    numSIREN 0..1 and
    numRPPS 0..1 and
    numSIRET 0..1 and 
    identifierOI 0..1 and
    numADELI 0..1 and
    identifierEG 0..1
* identifier[idNatStruct].type = $JDV-J236-TypeIdentifiant-ROR#40 (exactly)
* identifier[idNatStruct].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numFINESS].type = $JDV-J236-TypeIdentifiant-ROR#1 (exactly)
* identifier[numFINESS].type from $JDV-J236-TypeIdentifiant-ROR (required) 
* identifier[numSIREN].type from $JDV-J236-TypeIdentifiant-ROR (required) 
* identifier[numSIREN].type = $JDV-J236-TypeIdentifiant-ROR#2 (exactly)
* identifier[numRPPS].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numRPPS].type = $JDV-J236-TypeIdentifiant-ROR#4 (exactly)
* identifier[numSIRET].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[identifierOI].type = $JDV-J236-TypeIdentifiant-ROR#3 (exactly)
* identifier[identifierOI].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numSIRET].type = $JDV-J236-TypeIdentifiant-ROR#42 (exactly)
* identifier[numADELI].type = $JDV-J236-TypeIdentifiant-ROR#0 (exactly)
* identifier[numADELI].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[identifierEG].type = $JDV-J236-TypeIdentifiant-ROR#41 (exactly)
* identifier[identifierEG].type from $JDV-J236-TypeIdentifiant-ROR (required)
// SLice type 
* type 1..* 
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type contains
    statutJuridiqueINSEE 1..1 and
    categorieEtablissement 1..1 and
    sphParticipation 0..1 and
    sousEnsembleAgregatStatutJuridique 0..1 and
    fonctionLieu 0..1 and
    OIType 1..1
* type[statutJuridiqueINSEE] from $JDV-J199-StatutJuridique-ROR (required)
* type[categorieEtablissement] from $JDV-J55-CategorieEG-ROR (required)
* type[sphParticipation] from $JDV-J202-ESPIC-ROR (required)
* type[sousEnsembleAgregatStatutJuridique] from $JDV-J200-SousEnsembleAgregatStatutJuridique-ROR (required)
* type[fonctionLieu] from $JDV-J198-FonctionLieu-ROR (required)
* type[OIType] from $JDV-J203-TypeOrganisationInterne-ROR (required)
// Contact
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    RORContactDescription named ror-contact-description 0..1 and
    RORContactFunctionContact named ror-contact-function-contact 0..1 and
    RORContactConfidentialityLevel named ror-contact-confidentiality-level 0..1
* contact.extension[ror-contact-description] ^isModifier = false
* contact.extension[ror-contact-function-contact] ^isModifier = false
* contact.extension[ror-contact-confidentiality-level] ^isModifier = false
* contact.purpose from $JDV-J221-NatureContact-ROR (required)
* contact.telecom.extension ^slicing.discriminator.type = #value
* contact.telecom.extension ^slicing.discriminator.path = "url"
* contact.telecom.extension ^slicing.rules = #open
* contact.telecom.extension contains
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1
* contact.telecom.extension[ror-telecom-confidentiality-level] ^isModifier = false
* contact.telecom.extension[ror-telecom-usage] ^isModifier = false
* contact.telecom.extension[ror-telecom-communication-channel] ^isModifier = false

//telecommunication
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
// Extension
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ROROrganizationPrice named ror-organization-price 0..* and
    RORTerritorialDivision named ror-territorial-division 0..* and
    ROROrganizationFinancialHelpType named ror-organization-financial-help-type 0..* and
    ROROrganizationAccomodationFamily named ror-organization-accomodation-family 0..1 and
    ROROrganizationNbPermanentSocialHelpPlace named ror-organization-nb-permanent-social-help-place 0..1 and
    ROROrganizationNbTemporarySocialHelpPlace named ror-organization-nb-temporary-social-help-place 0..1 and
    ROROrganizationAccessibilityLocation named ror-organization-accessibility-location 0..1 and
    ROROrganizationLevelRecourseORSAN named ror-organization-level-recourse-orsan 0..1 and
    ROROrganizationPeriod named ror-organization-period 0.. and
    organization-period named openingClosingDate 0..1 and
    RORCommuneCog named ror-commune-cog 1..1 and 
    ROROrganizationDropZone named ror-organization-drop-zone 0..1
* extension[ror-territorial-division] ^isModifier = false
* extension[ror-organization-price] ^isModifier = false
* extension[ror-organization-drop-zone] ^isModifier = false
* extension[ror-organization-financial-help-type] ^isModifier = false
* extension[ror-organization-accomodation-family] ^isModifier = false
* extension[ror-organization-nb-permanent-social-help-place] ^isModifier = false
* extension[ror-organization-nb-temporary-social-help-place] ^isModifier = false
* extension[ror-organization-accessibility-location] ^isModifier = false
* extension[ror-organization-level-recourse-orsan] ^isModifier = false
* extension[ror-organization-period] ^isModifier = false
* extension[openingClosingDate] ^isModifier = false
* extension[ror-commune-cog] ^isModifier = false
* extension[ror-organization-drop-zone] ^isModifier = false
// Adresse 
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension[inseeCode] ^sliceName = "inseeCode"
* address.extension[inseeCode].valueCoding from $JDV-J230-CommuneOM-ROR (required)
* address.extension contains
    RORAddressName named ror-address-name 0..1 and
    RORAddressDescription named ror-address-description 0..1 and
    RORAddressStatus named ror-address-status 0..1 and
    RORCalculatedDistance named ror-calculated-distance 0..1 and 
    RORGeolocationLocation named ror-geolocation 0..1
* address.extension[ror-address-name] ^isModifier = false
* address.extension[ror-address-description] ^isModifier = false
* address.extension[ror-address-status] ^isModifier = false
* address.extension[ror-calculated-distance] ^isModifier = false 
* address.extension[ror-geolocation] ^isModifier = false 
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension contains
    ROROrganizationAddressLineISO21090AdxpLocality named ror-organization-address-line-iso-21090-adxp-locality 0..* and
    $careOf named careOf 0..* and
    $additionalLocator named additionalLocator 0..* and
    $houseNumber named houseNumber 0..* and
    $buildingNumberSuffix named buildingNumberSuffix 0..* and
    $streetNameType named streetNameType 0..* and
    $streetNameBase named streetNameBase 0..* and
    iso21090-ADXP-postBox named postalBox 0..*
* address.line.extension[streetNameType] ^sliceName = "streetNameType"
* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
/** address.line.extension[streetNameType].valueString ^sliceName = "valueString"
* address.line.extension[streetNameType].valueString ^binding.description = "JDV_J219-TypeVoie-ROR"*/
* address.line.extension[ror-organization-address-line-iso-21090-adxp-locality] ^isModifier = false
* partOf only Reference($FrOrganization or ROROrganization)